accessing - data
dbUpdate: aDataDict

	| query tableObject updateString |
	
	"create the required table object"
	tableObject := ( Smalltalk at: (self queryTable ) asSymbol ) new.

	"create the values portion of the query"
	query := WriteStream on: String new.
	updateString := self helperCreateUpdateString: aDataDict on: tableObject.

	query nextPutAll: 'update';
		space;
		nextPutAll: ( tableObject tableName );
		space;
		nextPutAll: updateString;
		nextPutAll: 'where';
		space.
		
	query := self helperProcessPrimaryKeys: tableObject primaryKey on: query with: aDataDict.
	
	self queryString: query contents.