accessing - data
dbSearchAll

	"retrieve ALL data that matches the key / values supplied."
	| queryString |

	queryString := 'select * from ', self dbTableName, ' '.		

	"execute query ..."	
	self dbResultset: ( self processSearchQuery: queryString ).