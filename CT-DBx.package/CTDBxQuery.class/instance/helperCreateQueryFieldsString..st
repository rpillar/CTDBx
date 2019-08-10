helper
helperCreateQueryFieldsString: tableObject
	
	| fieldsString |
	
	"create the fields portion of the query"
	fieldsString := WriteStream on: String new. 
	( tableObject dbTableFields ) do: [ :each | 
			fieldsString nextPutAll: each 
		] 
		separatedBy: [ fieldsString nextPut: $, ].
	
	^ fieldsString contents.