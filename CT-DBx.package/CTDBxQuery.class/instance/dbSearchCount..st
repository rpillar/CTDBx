accessing - data
dbSearchCount: queryParams

	"return a count of the number of rows that match the key / values supplied."
	| tableObject whereString |

	"create the required table object"
	tableObject := ( Smalltalk at: (self queryTable ) asSymbol ) new.
	
	whereString := self parseSearchQueryParams: queryParams.
	self queryString: 'select count(*) from ', tableObject dbTableName, ' ', whereString.		
		
	^ ''.