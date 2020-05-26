accessing - data
dbCreateOrUpdate: aDataDict

	"this method is in the wrong place - maybe ...."
	| fieldsString primaryKeyValue tableObject updateCheck updateString valuesString |

	"create the required table object"
	tableObject := ( Smalltalk at: ( ( self queryTable ) asSymbol ) ) new.
		
	"create the fields portion of the query"
	fieldsString := self helperCreateInsertFieldsString: tableObject.

	"Does this data already exist - primary key."
	primaryKeyValue := aDataDict at: tableObject primaryKey.
	
	updateCheck := self helperCheckForExistence: primaryKeyValue on: tableObject.
	( updateCheck ) 
		ifTrue: [ 
			updateString := self helperCreateUpdateString: aDataDict on: tableObject. 
			self queryString: 'update ', tableObject tableName, updateString, ' where ', self primaryKey, '=', primaryKeyValue surroundedBySingleQuotes.  
		]
		ifFalse: [ 
			valuesString := self helperCreateValuesString: aDataDict on: tableObject.
			self queryString: 'insert into ', self tableName, ' ', fieldsString, ' values ', valuesString. 
		].