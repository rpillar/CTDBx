accessing - data
dbUpdate: aDataDict

	| queryString updateString |
	
	"parse data passed in and build query string"
	updateString := self helperCreateUpdateString: aDataDict. 
	queryString := 'update ', 
		self dbTableName, updateString, 
		' where ', 
		self dbTablePrimaryKey, 
		'=', 
		( aDataDict at: self dbTablePrimaryKey ) 
		surroundedBySingleQuotes. 

	"execute query ..."
	self conn dbConnection execute: queryString.