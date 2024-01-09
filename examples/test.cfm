
<html>
	<head>
		<title>DynamoDB - List Tables</title>
	</head>
	<body>
	<cfset cfuserdb = structnew()>	
	<cftry>
		<cfset cfuserdb = new #application.relativepath#.assets.scripts.dynamodb.com.imageaid.cfdynamo.DynamoClient("","")>
		<cfcatch>
			<cfdump var="#cfcatch#" expand="no" label="Create DynamoClient error">
		</cfcatch>
	</cftry>
	
	<cftry>
		<cfset my_tables = cfuserdb.list_tables()>
		<cfcatch>
			<cfdump var="#cfcatch#" expand="no" label="list_tables error">
			<cfset my_tables = "Error">
		</cfcatch>
	</cftry>
	<h1>User Results</h1>
	<cfdump var="#my_tables#">

	<hr/>
	<cfset cfdb = structnew()>	
	<cftry>
		<cfset cfdb = new #application.relativepath#.assets.scripts.dynamodb.com.imageaid.cfdynamo.DynamoClient("","")>
		<cfcatch>
			<cfdump var="#cfcatch#" expand="no" label="Create DynamoClient error">
		</cfcatch>
	</cftry>
	
	<cftry>
		<cfset tables = cfdb.list_tables()>
		<cfcatch>
			<cfdump var="#cfcatch#" expand="no" label="list_tables error">
			<cfset tables = "Error">
		</cfcatch>
	</cftry>
	<h1>Owner Results</h1>
	<cfdump var="#tables#">

	</body>
</html>