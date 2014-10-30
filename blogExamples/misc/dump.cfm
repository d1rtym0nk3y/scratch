<cfscript>
	administrator = new CFIDE.adminapi.administrator();
	administrator.login("12345678", "apiuser");
	try {
		writeOutput("isAdminUser() according to administrator object: ");
		writeOutput("#administrator.isAdminUser()#<br>");
	} catch (any e){
		writeDump([e.type,e.message,e.detail]);
	}
	writeDump([administrator]);
	security = new CFIDE.adminapi.Security();
	writeOutput("security object exists: " & structKeyExists(variables, "security") & "<br>");
	writeOutput("isAdminUser() method in security object exists: " & structKeyExists(security, "isAdminUser") & "<br>");
	writeOutput("isAdminUser() method in security object is a function: " & isCustomFunction(security.isAdminUser) & "<br>");
	writeDump(var=getMetadata(security.isAdminUser), label="meatdata for security.isAdminUser");
	writeOutput("isAdminUser() according to security object: #security.isAdminUser()#<br>");
	//security.DISABLESECUREPROFILE();
</cfscript>