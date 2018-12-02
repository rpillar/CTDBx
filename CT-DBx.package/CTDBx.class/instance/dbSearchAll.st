accessing - data
dbSearchAll

	"retrieve ALL data in a table - use with care !!"
	| queryString |

	queryString := 'select * from ', self dbTableName, ' '.		

	"execute query ..."	
	self dbResultset: ( self processSearchQuery: queryString ).

	"store first (if not nil) in dbResult."
	( (self dbResultset at: 1 ) notNil ) ifTrue: [ self dbResult: ( self dbResultset at: 1 ) ]. 