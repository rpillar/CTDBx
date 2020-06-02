helper
helperCreateInsertFieldsString: aDataDict
	
	| fieldsString |
	
	"create the fields portion of the query - from the supplied dictionary"
	fieldsString := WriteStream on: String new. 
	fieldsString nextPut: $(.
	( aDataDict keys ) do: [ :each | 
			fieldsString nextPutAll: each 
		] 
		separatedBy: [ fieldsString nextPut: $, ].
		
	fieldsString nextPut: $).

	^ fieldsString contents.