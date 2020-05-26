helper
helperCreateValuesString: valuesData on: tableObject
	
	| valuesString |
	
	"create the values portion of the query"
	valuesString := WriteStream on: String new.
	valuesString nextPut: $(.
	tableObject fields do: [ :each | 
			valuesString nextPutAll: ( valuesData at: ( each asSymbol ) ) surroundedBySingleQuotes 
		] 
		separatedBy: [ valuesString nextPut: $, ].
		
	valuesString nextPut: $).
	^ valuesString contents.