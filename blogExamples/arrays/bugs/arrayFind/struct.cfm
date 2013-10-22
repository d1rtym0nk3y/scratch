<cfscript>
	writeOutput("<h2>Structs</h2>");

	arrayToSearch = [{"key"="value"}];

	writeOutput("<h3>Struct with key/value with same case</h3>");
	valueToFind = {"key"="value"};
	found = arrayFindNoCase(arrayToSearch, valueToFind);
	writeDump(var=[
		arrayToSearch,
		valueToFind,
		found
	], expand=false);
	assert(found, "Not found");
	writeOutput("<hr>");

	writeOutput("<h3>Struct with value with differing case</h3>");
	valueToFind = {"key"="VALUE"};
	found = arrayFindNoCase(arrayToSearch, valueToFind);
	writeDump(var=[
		arrayToSearch,
		valueToFind,
		found
	], expand=false);
	assert(found, "Not found");
	writeOutput("<hr>");


	writeOutput("<h3>Struct with key with differing case</h3>");
	valueToFind = {"KEY"="value"};
	found = arrayFindNoCase(arrayToSearch, valueToFind);
	writeDump(var=[
		arrayToSearch,
		valueToFind,
		found
	], expand=false);
	assert(found, "Not found");
	writeOutput("<hr>");
</cfscript>