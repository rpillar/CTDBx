processing
parseSearchQueryParamFormat: aValue

	"handle the formating of integer / string value parameters in the query string"
	( aValue isInteger ) 
		ifTrue: [  
			^ aValue asString
		]
		ifFalse: [
			^ ( aValue surroundedBy: $" asString ) 
		].