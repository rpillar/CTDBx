accessing - data
dbCreateOrUpdate: aDataDict

	"this method is in the wrong place - maybe ...."
	| fieldsString primaryKeyValue tableObject updateCheck updateString valuesString |

	"create the required table object"
	tableObject := ( Smalltalk at: ( ( self queryTable ) asSymbol ) ) new.
		
	"create the fields portion of the query"
	fieldsString := self helperCreateInsertFieldsString: tableObject.

	"Does this data already exist - primary key."
	primaryKeyValue := aDataDict at: tableObject dbTablePrimaryKey.
	
	updateCheck := self helperCheckForExistence: primaryKeyValue on: tableObject.
	( updateCheck ) 
		ifTrue: [ 
			updateString := self helperCreateUpdateString: aDataDict. 
			self queryString: 'update ', tableObject dbTableName, updateString, ' where ', self dbTablePrimaryKey, '=', primaryKeyValue surroundedBySingleQuotes.  
		]
		ifFalse: [ 
			valuesString := self helperCreateValuesString: aDataDict.
			self queryString: 'insert into ', self dbTableName, ' ', fieldsString, ' values ', valuesString. 
		].