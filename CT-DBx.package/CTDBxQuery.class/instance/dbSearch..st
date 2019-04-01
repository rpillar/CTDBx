accessing - data
dbSearch: queryParams

	"retrieve ALL data that matches the key / values supplied."
	| tableObject whereString |

	"create the required table object"
	tableObject := ( Smalltalk at: (self queryTable ) asSymbol ) new.
	
	"parse the query{arams to create the queryString - and store."
	whereString := self parseSearchQueryParams: queryParams.
	self queryString: 'select * from ', tableObject dbTableName, ' ', whereString.		

	^''.