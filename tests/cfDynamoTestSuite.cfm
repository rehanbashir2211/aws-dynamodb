<cfscript>
	test_suite = new mxunit.framework.TestSuite().TestSuite();
	test_suite.addAll("cfdynamo.tests.dynamodb.DynamoDBTest");
	
	results = test_suite.run();
	writeOutput( results.getResultsOutput('html') );
</cfscript>
