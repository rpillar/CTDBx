accessing - data
dbSearchAllOrderedBy: aField order: anOrder limit: aNumber

	"get _all_ rows from the specified table - but you may want to limit that search to the first n rows"
	| tableFields tableObject |
		
	"create the required table object"
	tableObject := ( Smalltalk at: (self queryTable ) asSymbol ) new.

	"create the _fields_ portion of the query"
	tableFields := self helperCreateQueryFieldsString: tableObject.

	self queryString: 'select ' , tableFields , ' from ' , tableObject tableName, 'orderby ', aField, ' ', anOrder, ' LIMIT ', ( aNumber asString ), ';'.	