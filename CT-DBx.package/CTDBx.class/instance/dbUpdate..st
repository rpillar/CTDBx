accessing - data
dbUpdate: dataDict

	"update based on the state of the current model."
	| queryString |
	
	"parse / validate data passed in"
	queryString := self parseQueryParams: dataDict on: 'update'.

	"execute query ..."
	self database dbConnection execute: queryString.