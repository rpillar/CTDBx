helper
helperCreateValuesString: aDataDict on: tableObject
	
	| valuesString |
	
	"create the values portion of the query"
	valuesString := WriteStream on: String new.
	valuesString nextPut: $(.
	aDataDict keys do: [ :each |
		valuesString nextPutAll: ( ( aDataDict at: ( each asSymbol ) ) surroundedBy: $" asString ) 
	] 
	separatedBy: [ valuesString nextPut: $, ].
		
	valuesString nextPut: $).

	^ valuesString contents.