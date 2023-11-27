accessing - data
dbSearch: queryParams

	"generic 'select * from <table> where ....' - queryParams - in the form of -> { { #year -> 13 } }"

	"retrieve ALL data that matches the key / values supplied."
	| tableFields tableObject whereString |

	"create the required table object"
	tableObject := ( Smalltalk at: ( self queryTable ) asSymbol ) new.
	
	"create the _fields_ portion of the query"
	tableFields := self helperCreateQueryFieldsString: tableObject.
	
	"parse the query params to create the queryString - and store."
	whereString := self parseSearchQueryParams: queryParams.
	self queryString: 'select ' , tableFields ,  ' from ', tableObject tableName, ' ', whereString.		