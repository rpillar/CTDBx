accessing - data
dbDelete: aDataDict

	| queryString |
	
	"Note - can only <delete> based on the primary key value (update to come)."
	queryString := 'delete from ', self dbTableName, ' where ', self dbTablePrimaryKey, '=', ( aDataDict at: self dbTablePrimaryKey ) surroundedBySingleQuotes. 

	"execute query ..."
	self conn dbConnection execute: queryString.