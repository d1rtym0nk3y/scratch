<cfsetting showdebugoutput="false">
<cfscript>
	bugsUrl = "https://bugbase.adobe.com/index.cfm?event=qSearchBugs&page=1&pageSize=500&product=1149&version=10206&state=OPEN&status=UNVR";
	bugUrl	= "https://bugbase.adobe.com/index.cfm?event=bug&id=";

	httpConnection = new Http(URL=bugsUrl, method="get");
	bugsJsonP = httpConnection.send().getPrefix().fileContent;
	bugsJson = removeChars(bugsJsonP, 1, 2);
	if (!isJson(bugsJson)){
		writeOutput("Error fetching data: response from server was not expected JSON");
		writeDump([bugsUrl,bugsJsonP]);
		exit;
	}
	bugs = deserializeJson(bugsJson, false).query;
</cfscript>
<cfquery name="bugsSorted" dbtype="query">
	SELECT		defid AS id, ad_s_created_dt AS dateCreated, ad_s_title AS summary
	FROM		bugs
	ORDER BY	defid
</cfquery>
<cfoutput>
<style>
	td {
		white-space	: nowrap;
	}
</style>
<table border="1">
	<thead>
		<tr><th>##</th><th>Created</th><th>ID</th><th>Summary</th></tr>
	</thead>
	<tbody>
		<cfloop query="bugsSorted">
			<tr>
				<td>#currentRow#</td>
				<td>#dateFormat(dateCreated, "yyyy-mm-dd")#</td>
				<td><a href="#bugUrl##id#" target="_blank">#id#</a></td>
				<td><a href="#bugUrl##id#" target="_blank">#summary#</a></td>
			</tr>
		</cfloop>
	</tbody>
</table>
</cfoutput>