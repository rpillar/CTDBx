accessing - data
dbSearchAll

	"get _all_ rows from the specified table - be careful."
	| tableFields tableObject |
		
	"create the required table object"
	tableObject := ( Smalltalk at: (self queryTable ) asSymbol ) new.
	
	"create the _fields_ portion of the query"
	tableFields := self helperCreateQueryFieldsString: tableObject.
		
	self queryString: 'select ' , tableFields , ' from ' , tableObject tableName, ';'.