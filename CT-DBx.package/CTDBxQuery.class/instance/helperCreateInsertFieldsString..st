helper
helperCreateInsertFieldsString: tableObject
	
	| fieldsString |
	
	"create the fields portion of the query"
	fieldsString := WriteStream on: String new. 
	fieldsString nextPut: $(.
	( tableObject dbTableFields ) do: [ :each | 
			fieldsString nextPutAll: each 
		] 
		separatedBy: [ fieldsString nextPut: $, ].
		
	fieldsString nextPut: $).
	
	^ fieldsString contents.