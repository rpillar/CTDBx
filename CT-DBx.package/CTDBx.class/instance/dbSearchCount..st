accessing - data
dbSearchCount: queryParams

	"return a count of the number of rows that match the key / values supplied."
	| queryString whereString |

	whereString := self parseSearchQueryParams: queryParams.
	queryString := 'select * from ', self dbTableName, ' ', whereString.		

	"execute query ..."	
	^ ( self processSearchQuery: queryString ) size.