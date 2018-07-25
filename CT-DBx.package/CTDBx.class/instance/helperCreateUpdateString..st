helper
helperCreateUpdateString: updateData
	
	| updateString |
	
	"create the update portion of the query - remove primary key fields from processing"
	updateString := WriteStream on: String new. 
	self dbFields 
		select: [ :each | each ~= self dbTablePrimaryKey ] 
		thenDo: [ :each | 
			updateString nextPutAll: ' set ';
			nextPutAll: each;
			nextPut:  $=;
			nextPutAll: ( updateData at: ( each asSymbol ) ) surroundedBySingleQuotes;
			nextPut: $,
		].
	
	"remove trailing comma ..."
	^ ( updateString contents ) allButLast.