<cfscript>
	/**
	* Scramail takes a string as an argument and changes the characters in the email to their ascii equivalents to hide the email address from spam bots.
	*
	* @param str String to parse. (Required)
	* @return Returns a string.
	* @author Deva Nando (d.nando@gmail.com)
	* @version 1, August 10, 2006
	* @amended August 6, 2013 to cope with multiple emails - Steve Sobol (steve@sobolstones.com)
	*/
function scramailNew(str) {
	var emailregex = "(['_a-z0-9-]+(\.['_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*\.(([a-z]{2,3})|(aero|coop|info|museum|name)))";
	var i = 1;
	var email = "";
	var ascMail = "";
	var marker = 1;
	var matches = "";

	matches = reFindNoCase(emailregex, str, marker, true);
	while (matches.len[1] gt 0) {
		email = mid(str, matches.pos[1], matches.len[1]);
		for (i=1; i LTE len(email); i=i+1) {
			ascMail = ascMail & "&##" & asc(mid(email,i,1)) & ";";
		}
		str = replace(str,email,ascmail,"all");
		marker = matches.pos[1] + matches.len[1];
		matches = reFindNoCase(emailregex, str, marker, true);
		ascmail = "";
	}
	return str;
}
</cfscript>