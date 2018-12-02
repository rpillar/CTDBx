accessing - data
dbSearch: queryParams

	"retrieve ALL data that matches the key / values supplied."
	| queryString whereString |

	whereString := self parseSearchQueryParams: queryParams.
	queryString := 'select * from ', self dbTableName, ' ', whereString.		

	"execute query ..."	
	self dbResultset: ( self processSearchQuery: queryString with: self dbFields ).
	
	"store first (if not nil) in dbResult."
	( (self dbResultset at: 1 ) notNil ) ifTrue: [ self dbResult: ( self dbResultset at: 1 ) ]. 