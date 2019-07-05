accessing - data
dbCreateOrUpdate: aDataDict

	| fieldsString queryString updateCheck updateString valuesString |
	
	"create the fields portion of the query"
	fieldsString := self helperCreateFieldsString.

	"Does this data already exist - primary key."
	updateCheck := self helperCheckForExistance: ( aDataDict at: self dbTablePrimaryKey ).
	( updateCheck ) 
		ifTrue: [ 
			updateString := self helperCreateUpdateString: aDataDict. 
			queryString := 'update ', self dbTableName, updateString, ' where ', self dbTablePrimaryKey, '=', ( aDataDict at: self dbTablePrimaryKey ) surroundedBySingleQuotes.  
		]
		ifFalse: [ 
			valuesString := self helperCreateValuesString: aDataDict.
			queryString := 'insert into ', self dbTableName, ' ', fieldsString, ' values ', valuesString. ].

	"execute query ..."
	"self conn dbConnection execute: ( queryString, ';' )."