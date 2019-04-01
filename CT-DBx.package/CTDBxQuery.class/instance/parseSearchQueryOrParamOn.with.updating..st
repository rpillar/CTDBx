initialization
parseSearchQueryOrParamOn: e with: key updating: queryString

	| a1 |
	( ( e value first ) = #or ) ifTrue: [ 
		a1 := ( e value ) allButFirst.
		queryString nextPut: $(.
		a1 do: [ :x | 
			queryString nextPutAll: key; 
			nextPut: $=; 
			nextPutAll: ( x surroundedBySingleQuotes ) 
		]
		separatedBy: [ queryString nextPutAll: ' or ' ].
		queryString nextPut: $).
	].

	^ queryString. 