initialization
parseSearchQueryLikeParamOn: e with: key updating: whereString

	"process the 'like' portion of the query string"
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