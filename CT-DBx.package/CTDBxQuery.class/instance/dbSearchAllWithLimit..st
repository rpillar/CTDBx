accessing - data
dbSearchAllWithLimit: aNumber

	"get _all_ rows from the specified table - but you may want to limit that serach to the first n rows"
	| tableFields tableObject |
		
	"create the required table object"
	tableObject := ( Smalltalk at: (self queryTable ) asSymbol ) new.

	"create the _fields_ portion of the query"
	tableFields := self helperCreateQueryFieldsString: tableObject.

	self queryString: 'select ' , tableFields , ' from ' , tableObject tableName, ' LIMIT ', ( aNumber asString ), ';'.	