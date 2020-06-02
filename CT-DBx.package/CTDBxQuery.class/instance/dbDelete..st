accessing - data
dbDelete: aDataDict
	
	"Note - can only <delete> based on the primary key value (update to come)"
	| query tableObject |
	
	"create the required table object"
	tableObject := ( Smalltalk at: (self queryTable ) asSymbol ) new.
	
	query := WriteStream on: String new. 
	query nextPutAll: 'delete from';
		space;
		nextPutAll: tableObject tableName;
		space;
		nextPutAll: 'where';
		space;
		nextPutAll: tableObject primaryKey;
		nextPut: $=.

	( ( aDataDict at: tableObject primaryKey ) isInteger )
		ifTrue: [ query nextPutAll: ( ( aDataDict at: ( ( tableObject primaryKey ) asSymbol ) ) asString ) ]
		ifFalse: [ query nextPutAll: ( aDataDict at: ( tableObject primaryKey ) asSymbol ) surroundedBySingleQuotes ].
		
	self queryString: query contents.