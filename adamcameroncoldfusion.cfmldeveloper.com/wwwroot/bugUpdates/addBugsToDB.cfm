<cfsetting requesttimeout="#60*60*24#">
<cfflush interval="16">
<cfscript>
	bugbaseProxy = new components.BugbaseProxy();

	allBugs = deserializeJson(fileRead(expandPath("./allBugs.json")));
	for (i=1; i <= arrayLen(allBugs.data.AD_S_DEFECT_ID); i++){ 
		bugId = allBugs.data.AD_S_DEFECT_ID[i];
		bugVersion = allBugs.data.version[i];

		writeOutput("Processing #bugId#&hellip;<br>");

		bug = entityLoad("AdobeBug", bugId, true);
		if (!isNull(bug)){
			writeOutput("Already loaded<br>");
			continue;
		}
		
		try {
			bugData = bugbaseProxy.getBug(bugId);
		}
		catch (any e){
			rethrow;
		}

		bug = new components.orm.AdobeBug(
			adobeId		= bugId,
			title		= bugData.title,
			status		= bugData.status,
			state		= bugData.state,
			comments	= bugData.comments,
			attachments	= bugData.attachments,
			votes		= bugData.votes,
			version		= bugVersion
		);
		bug.setAdobeId(bugid);
		bug.setTitle(bugData.title);
		bug.setStatus(bugData.status);
		bug.setState(bugData.state);
		bug.setComments(bugData.comments);
		bug.setAttachments(bugData.attachments);
		bug.setVotes(bugData.votes);
		bug.setVersion(bugVersion);
		writeOutput("Bug found: '#bugData.title#'<br>");
		entitySave(bug);
		ormFlush();
		writeOutput("Bug saved<br>");
		//sleep(2000);
	}
</cfscript>