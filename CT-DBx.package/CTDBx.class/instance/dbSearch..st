accessing - data
dbSearch: queryParams

	"retrieve ALL data that matches the key / values supplied."
	| queryString whereString |

	whereString := self parseSearchQueryParams: queryParams.
	queryString := 'select * from ', self dbTableName, ' ', whereString.		

	"execute query ..."	
	self dbResultset: ( self processSearchQuery: queryString ).