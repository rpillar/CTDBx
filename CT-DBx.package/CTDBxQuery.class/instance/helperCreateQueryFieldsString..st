helper
helperCreateQueryFieldsString: tableObject
	
	| fieldsString |
	
	"create the fields portion of the query - based on the tableObject passed in"
	fieldsString := WriteStream on: String new. 
	( tableObject fields ) do: [ :each | 
			fieldsString nextPutAll: each 
		] 
		separatedBy: [ fieldsString nextPut: $, ].
	
	^ fieldsString contents.