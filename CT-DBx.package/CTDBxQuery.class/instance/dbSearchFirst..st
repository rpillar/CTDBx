accessing - data
dbSearchFirst: queryParams

	"retrieve only the first data that matches the key / values supplied."
	| tableObject whereString |

	"create the required table object"
	tableObject := ( Smalltalk at: (self queryTable ) asSymbol ) new.
	
	whereString := self parseSearchQueryParams: queryParams.
	self queryString: 'select * from ', tableObject dbTableName, ' ', whereString, ' LIMIT 1'.	