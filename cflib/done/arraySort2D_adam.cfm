<cfscript>
function arraySort2D(arrayToSort, sortColumn, type) {
	var order			= "asc";
	var i				= 1;
	var j				= 1;
	var thePosition		= "";
	var lookupArray		= arrayNew(1);
	var arrayToReturn	= arrayNew(2);
	var sortArray		= arrayNew(1);
	var counter			= 1;

	if (arrayLen(arguments) GT 3){
		order = arguments[4];
	}

	for (i=1; i LTE arrayLen(arrayToSort); i=i+1) {
		arrayAppend(sortArray, arrayToSort[i][sortColumn]);
	}

	lookupArray = sortArray;
	arraySort(sortArray, type, order);

	for (i=1; i LTE arrayLen(sortArray); i=i+1) {
		thePosition = listFind(theList, sortArray[i], delim);
		theList = listDeleteAt(theList, thePosition, delim);
		for (j=1; j LTE arrayLen(arrayToSort[thePosition]); j=j+1) {
			arrayToReturn[counter][j] = arrayToSort[thePosition][j];
		}
		arrayDeleteAt(arrayToSort, thePosition);
		counter = counter + 1;
	}
	return arrayToReturn;
}
</cfscript>

<cfset arr = [[1,'one,1'],[2,'two,2'],[3,'three,3']]>
<cfdump var="#ArraySort2D(arr, 2, "textnocase", "asc", "|")#">