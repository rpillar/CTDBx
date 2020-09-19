initialization
parseSearchQueryOrParamOn: e with: key updating: whereString

	"process the 'or' portion of the query string"
	| a1 |
	( ( e value first ) = #or ) ifTrue: [ 
		a1 := ( e value ) allButFirst.
		whereString nextPut: $(.
		a1 do: [ :x | 
			whereString nextPutAll: key; 
			nextPut: $=; 
			nextPutAll: ( self parseSearchQueryParamFormat: x )
		]
		separatedBy: [ whereString nextPutAll: ' or ' ].
		whereString nextPut: $).
	].

	^ whereString. 