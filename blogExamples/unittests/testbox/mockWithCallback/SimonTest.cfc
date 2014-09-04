component extends='testbox.system.BaseSpec' {

	writeLog(file=application.applicationname, text="in pseudoconstructor");
 
	function run(){
		writeLog(file=application.applicationname, text="in run()");
 
		describe('Testing precedence',function(){
 			writeLog(file=application.applicationname, text="in describe()'s callback");			

			beforeEach(function(){
				writeLog(file=application.applicationname, text="in beforeEach()'s callback");			
			});

			it('works fine', function(){
				writeLog(file=application.applicationname, text="in it()'s callback");			
				expect(function(){
					writeLog(file=application.applicationname, text="in expect()'s callback");
					return true;
				})._not().toThrow();
			});
 
			afterEach(function(){
				writeLog(file=application.applicationname, text="in afterEach()'s callback");			
			});
 
		});
	}
 
}