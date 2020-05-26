accessing - data
dbDelete: aDataDict
	
	"Note - can only <delete> based on the primary key value (update to come)"
	| tableObject |
	
	"create the required table object"
	tableObject := ( Smalltalk at: (self queryTable ) asSymbol ) new.
	
	self queryString: 'delete from ', tableObject tableName, ' where ', tableObject primaryKey, '=', ( aDataDict at: tableObject primaryKey ) surroundedBySingleQuotes. 