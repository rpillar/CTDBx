initialization
parseSearchQueryOrParamOn: e with: key updating: whereString

	| a1 |
	( ( e value first ) = #or ) ifTrue: [ 
		a1 := ( e value ) allButFirst.
		whereString nextPut: $(.
		a1 do: [ :x | 
			whereString nextPutAll: key; 
			nextPut: $=; 
			nextPutAll: ( x surroundedBySingleQuotes ) 
		]
		separatedBy: [ queryString nextPutAll: ' or ' ].
		whereString nextPut: $).
	].

	^ whereString. 