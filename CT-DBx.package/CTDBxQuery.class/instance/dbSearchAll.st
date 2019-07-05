accessing - data
dbSearchAll

	| tableObject |
		
	"create the required table object"
	tableObject := ( Smalltalk at: (self queryTable ) asSymbol ) new.
		
	self queryString: 'select * from ', tableObject dbTableName, ';'.		

	"execute query ..."	
	"self dbResultset: ( self processSearchQuery: queryString )."

	"store first (if not nil) in dbResult."
	"( (self dbResultset at: 1 ) notNil ) ifTrue: [ self dbResult: ( self dbResultset at: 1 ) ]. "