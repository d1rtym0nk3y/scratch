<cfset arrayToSearch = [{key="value"}]>
<cfset structToFind = {key="VALUE"}>

<cfdump var="#arrayToSearch#" label="arrayToSearch">
<cfdump var="#structToFind#" label="structToFind">

<cfoutput>
Was it found: #arrayContains(arrayToSearch, structToFind)#<br />
</cfoutput>