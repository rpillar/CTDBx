initialization
parseSearchQueryBetweenParamOn: e with: key updating: queryString

	( ( e value first ) = #between ) ifTrue: [
		queryString space;
			nextPutAll: key;
			space;
			nextPutAll: ' between ';
			space; 
			nextPutAll: ( ( e value ) at: 2 );
			nextPutAll: 'and ';
			nextPutAll: ( ( e value ) at: 3 ).
		].

	^ queryString. 