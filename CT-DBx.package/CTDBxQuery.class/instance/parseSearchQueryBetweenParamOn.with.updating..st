initialization
parseSearchQueryBetweenParamOn: e with: key updating: whereString

	"process a 'between' portion of a query string"
	( ( e value first ) = #between ) ifTrue: [
		whereString space;
			nextPutAll: key;
			space;
			nextPutAll: ' between ';
			space; 
			nextPutAll: ( self parseSearchQueryParamFormat: ( ( e value ) at: 2 ) );
			space;
			nextPutAll: 'and ';
			space;
			nextPutAll: ( self parseSearchQueryParamFormat: ( ( e value ) at: 3 ) ).
		].

	^ whereString. 