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
		space.
self halt.	
	query := self helperProcessPrimaryKeys: tableObject primaryKey on: query with: aDataDict.
self halt.		
	self queryString: query contents.