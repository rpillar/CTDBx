initialization
parseSearchQueryLikeParamOn: e with: key updating: whereString

	( ( e value first ) = #like ) ifTrue: [
		whereString space;
			nextPutAll: key;
			space;
			nextPutAll: ' like ';
			space; 
			nextPut: $';
			nextPut: $%;
			nextPutAll: ( ( e value ) at: 2 );
			nextPut: $%;
			nextPut: $'. 
	].

	^ whereString. 