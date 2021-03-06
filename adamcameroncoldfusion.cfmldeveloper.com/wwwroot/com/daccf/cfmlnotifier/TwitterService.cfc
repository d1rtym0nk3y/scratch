component {

	variables.messageSize = 140;
	variables.restBaseURL = "https://api.twitter.com/1.1/";

	public TwitterService function init(required string consumerKey, required string consumerSecret, required string accessToken, required string accessTokenSecret){
		var javaLoader = createObject("javaloader.JavaLoader").init([expandPath("/twitter4j/twitter4j-core-3.0.3.jar")]);
		var configBuilder = javaLoader.create("twitter4j.conf.ConfigurationBuilder");

		configBuilder.setUseSSL(javacast("boolean", true));
		configBuilder.setRestBaseURL(variables.restBaseURL);
		configBuilder.setOAuthConsumerKey(arguments.consumerKey);
		configBuilder.setOAuthConsumerSecret(arguments.consumerSecret);
		configBuilder.setOAuthAccessToken(arguments.accessToken);
		configBuilder.setOAuthAccessTokenSecret(arguments.accessTokenSecret);
		variables.twitter = javaLoader.create("twitter4j.TwitterFactory").init(configBuilder.build()).getInstance();

		return this;
	}

	public void function updateStatus(required string message){
		if (!structkeyExists(variables, "twitter")){
			throw(
				type	= "ObjectNotInitializedException",
				message	= "The TwitterService has not been initialised",
				detail	= "The TwitterService object needs to be initialised with authorsation credentials before it can be used"
			);
		}
		variables.twitter.updateStatus(arguments.message);
	}

	public string function createUpdateString(required string message, string theUrl=""){
		var hellip = "...";
		if (len(theUrl)){
			 theUrl = " (#theUrl#)";
		}
		var messagePart = message;
		var charsLeft = variables.messageSize - len(theUrl);

		if (len(messagePart) > charsLeft){
			messagePart = left(messagePart, charsLeft-(len(hellip)+1)) & hellip; 
		}

		return messagePart & theUrl;
	}

	public any function getTwitter(){
		return variables.twitter;
	}

}