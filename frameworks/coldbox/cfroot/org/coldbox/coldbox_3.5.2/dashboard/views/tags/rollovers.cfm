<cfoutput>
<cfsavecontent variable="rollovers">
<script language="javascript">
function getHint( vid ){
	<cfloop query="rc.qRollovers">
	if ( vid == '#rolloverid#' ){ 
		$("##sidemenu_help").html('#JSStringFormat(text)#');
	}
	</cfloop>
}
</script>
</cfsavecontent>
<cfhtmlhead text="#rollovers#">
</cfoutput>