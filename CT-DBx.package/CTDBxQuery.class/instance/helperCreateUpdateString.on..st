helper
helperCreateUpdateString: aDataDict on: tableObject
	
	| updateString |
	
	"create the update portion of the query - Note : primary key field is removed from processing"
	"probably needs to be updated to process tables where the <primary key> is an amalgam of keys"
	updateString := WriteStream on: String new. 
	updateString nextPutAll: ' set';
		space.
	
	"tableObject fields"
	aDataDict keys 
		select: [ :each | each asString ~= tableObject primaryKey ] 
		thenDo: [ :each |
			updateString nextPutAll: each asString;
			nextPut:  $=;
			nextPutAll: ( ( aDataDict at: each ) surroundedBy: $" asString );
			nextPut: $,
		].
	
	"remove trailing comma ..."
	^ ( updateString contents ) allButLast.