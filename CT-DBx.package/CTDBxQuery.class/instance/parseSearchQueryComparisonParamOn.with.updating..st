initialization
parseSearchQueryComparisonParamOn: e with: key updating: whereString

	"process the comparison portion of the query string"
	( ( e value first ) = #gt ) ifTrue: [ 
		whereString nextPutAll: key; 
			space;
			nextPut: $>; 
			space;
			nextPutAll: ( self parseSearchQueryParamFormat: ( e value second ) ) 
	].

	( ( e value first ) = #lt ) ifTrue: [ 
		whereString nextPutAll: key; 
			space;
			nextPut: $<; 
			space;
			nextPutAll: ( self parseSearchQueryParamFormat: ( e value second ) )
	].

	( ( e value first ) = #ne ) ifTrue: [ 
		whereString nextPutAll: key; 
			space;
			nextPut: $!;
			nextPut: $=; 
			space;
			nextPutAll: ( self parseSearchQueryParamFormat: ( e value second ) )
	].

	^ whereString. 