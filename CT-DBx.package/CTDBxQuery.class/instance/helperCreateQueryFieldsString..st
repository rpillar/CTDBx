helper
helperCreateQueryFieldsString: tableObject
	
	| fieldsString |
	
	"create the fields portion of the query"
	fieldsString := WriteStream on: String new. 
	( tableObject tableFields ) do: [ :each | 
			fieldsString nextPutAll: each name 
		] 
		separatedBy: [ fieldsString nextPut: $, ].
	
	^ fieldsString contents.