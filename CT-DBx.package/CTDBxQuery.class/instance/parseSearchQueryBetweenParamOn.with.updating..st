initialization
parseSearchQueryBetweenParamOn: e with: key updating: whereString

	( ( e value first ) = #between ) ifTrue: [
		whereString space;
			nextPutAll: key;
			space;
			nextPutAll: ' between ';
			space; 
			nextPutAll: ( ( e value ) at: 2 );
			nextPutAll: 'and ';
			nextPutAll: ( ( e value ) at: 3 ).
		].

	^ whereString. 