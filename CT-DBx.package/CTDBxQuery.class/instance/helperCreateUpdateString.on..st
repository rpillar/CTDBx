helper
helperCreateUpdateString: aDataDict on: tableObject
	
	| updateString |
	
	"create the update portion of the query - Note : primary key field is removed from processing"
	updateString := WriteStream on: String new. 
	tableObject fields 
		select: [ :each | each ~= tableObject primaryKey ] 
		thenDo: [ :each | 
			updateString nextPutAll: ' set ';
			nextPutAll: each;
			nextPut:  $=;
			nextPutAll: ( aDataDict at: ( each asSymbol ) ) surroundedBySingleQuotes;
			nextPut: $,
		].
	
	"remove trailing comma ..."
	^ ( updateString contents ) allButLast.