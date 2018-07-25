accessing - data
dbCreate

	| arrayCounter fieldsString myData query valuesString |
	
	"create the fields portion of the query"
	fieldsString := self helperCreateFieldsString.
		
	"create the values portion of the query"
	valuesString := self helperCreateValuesString.

	"create the data values - based on the current state of the class instance."
	myData := Array new: ( self dbFields size ).
	arrayCounter := 1.
	self dbFields do: [ :i |
		myData at: arrayCounter put: i.  
		arrayCounter := arrayCounter + 1.
	].
	
	"the full query string ..."	
	query := 'insert into ', self dbTableName, ' ', fieldsString, ' values ', valuesString.

	"execute query ..."
	self database dbConnection execute: query with: myData.