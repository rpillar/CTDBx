accessing - data
dbUpdate: aDataDict

	| tableObject updateString |
	
	"create the required table object"
	tableObject := ( Smalltalk at: (self queryTable ) asSymbol ) new.
	
	"parse data passed in and build query string"
	updateString := self helperCreateUpdateString: aDataDict on: tableObject. 
	self queryString: 'update ', 
		( tableObject dbTableName ) , updateString, 
		' where ', 
		( tableObject dbTablePrimaryKey ) , 
		'=', 
		( aDataDict at: tableObject dbTablePrimaryKey ) 
		surroundedBySingleQuotes. 

	"execute query ..."
	"self conn dbConnection execute: queryString."