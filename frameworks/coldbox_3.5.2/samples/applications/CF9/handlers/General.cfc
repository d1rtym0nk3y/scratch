/*A general event handler. This is a dummy one, please remove and create real ones.*/component{		// OPTIONAL HANDLER PROPERTIES	this.event_cache_suffix = "";	this.prehandler_only 	= "";	this.prehandler_except 	= "";	this.posthandler_only 	= "";	this.posthandler_except = "";	// Allowed HTTP Methods Ex: this.allowedMethods = {delete='POST,DELETE',index='GET'}	this.allowedMethods = {};		/**	IMPLICIT FUNCTIONS: Uncomment to use	void function preHandler(event,action) output=false{		var rc = event.getCollection();	}	void function postHandler(event,action) output=false{		var rc = event.getCollection();	}	void function onMissingAction(event,missingAction) output=false{	}	*/			void function index(event) output=false{		var rc = event.getCollection();				rc.welcomeMessage = "Welcome to ColdBox!";				event.setView("home");	}			void function doSomething(event) output=false{		event.setNextEvent('general.index');	}	}