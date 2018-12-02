initialization
parseSearchQueryLikeParamOn: e with: key updating: queryString

	( ( e value first ) = #like ) ifTrue: [
		queryString space;
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

	^ queryString. 