<cfscript>
// testTwitter.cfm
msg = "Test @ #now()#";

writeDump(var=this);

twitterService	= createObject("cfmlnotifier.TwitterService").init(argumentCollection=application.authStruct);
twitterService.updateStatus(msg);
writeOutput(msg);
</cfscript>