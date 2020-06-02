accessing - data
dbCreate: aDataDict

	| fieldsString tableObject valuesString |
	
	"create the required table object"
	tableObject := ( Smalltalk at: (self queryTable ) asSymbol ) new.
	
	"create the fields portion of the query"
	fieldsString := self helperCreateInsertFieldsString: aDataDict.

	"create the values portion of the query"
	valuesString := self helperCreateValuesString: aDataDict.
	self queryString: 'insert into ', tableObject tableName, ' ', fieldsString, ' values ', valuesString, ';'.