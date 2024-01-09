<cfscript>
	
		cfdynamo = new #application.relativepath#.assets.scripts.dynamodb.com.imageaid.cfdynamo.DynamoClient(
		aws_key = '', 
		aws_secret = ''
	);	
		my_tables = cfdynamo.list_tables();
	
	
</cfscript>
<html>
	<head>
		<title>DynamoDB - List Tables</title>
	</head>
	<body>
		<h1>List Tables - Results</h1>
		<cfoutput>
			<ul>
			<cfloop array="#my_tables#" index="table_name">
				<li>#table_name#</li>
			</cfloop>
			</ul>
		</cfoutput>
	</body>
</html>