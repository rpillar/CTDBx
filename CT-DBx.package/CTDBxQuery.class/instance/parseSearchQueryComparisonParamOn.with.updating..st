initialization
parseSearchQueryComparisonParamOn: e with: key updating: whereString

	( ( e value first ) = #gt ) ifTrue: [ 
		whereString nextPutAll: key; 
			space;
			nextPut: $>; 
			space;
			nextPutAll: ( ( e value second ) surroundedBySingleQuotes ) 
	].

	( ( e value first ) = #lt ) ifTrue: [ 
		whereString nextPutAll: key; 
			space;
			nextPut: $<; 
			space;
			nextPutAll: ( ( e value second ) surroundedBySingleQuotes ) 
	].

	( ( e value first ) = #ne ) ifTrue: [ 
		whereString nextPutAll: key; 
			space;
			nextPut: $!;
			nextPut: $=; 
			space;
			nextPutAll: ( ( e value second ) surroundedBySingleQuotes ) 
	].

	^ whereString. 