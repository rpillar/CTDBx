helper
helperCreateValuesString: aDataDict
	
	| valuesString |
	
	"create the values portion of the query"
	valuesString := WriteStream on: String new.
	valuesString nextPut: $(.
	aDataDict keys do: [ :each |
		( ( aDataDict at: each ) isInteger ) 
			ifTrue: [  
				valuesString nextPutAll: ( ( aDataDict at: each ) asString )
			]
			ifFalse: [
				valuesString nextPutAll: ( ( aDataDict at: each ) surroundedBy: $" asString ) 
			]
	] 
	separatedBy: [ valuesString nextPut: $, ].
		
	valuesString nextPut: $).

	^ valuesString contents.