accessing - data
dbCreate: aDataDict

	| fieldsString queryString valuesString |
	
	"create the fields portion of the query"
	fieldsString := self helperCreateFieldsString.

	"create the values portion of the query"
	valuesString := self helperCreateValuesString: aDataDict.
	queryString := 'insert into ', self dbTableName, ' ', fieldsString, ' values ', valuesString.

	"execute query ..."
	"self conn dbConnection execute: ( queryString, ';' )."