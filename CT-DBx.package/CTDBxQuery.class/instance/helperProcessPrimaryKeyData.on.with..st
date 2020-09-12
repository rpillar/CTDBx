helper
helperProcessPrimaryKeyData: key on: query with: data

	"check / process if key is integer or a string"
	( ( data at: key ) isInteger )
		ifTrue: [ 
			query nextPutAll: ( ( data at: ( ( key ) asSymbol ) ) asString ) 
		]
		ifFalse: [ 
			query nextPutAll: ( data at: ( key ) asSymbol ) surroundedBySingleQuotes 
		].
		
	^ query.