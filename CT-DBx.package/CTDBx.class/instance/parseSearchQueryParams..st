processing
parseSearchQueryParams: queryParams

	| k queryString | 
	"receive query params as an array of associations - parse into a query string and return. 
	  Processing of more complex queries will be added ..."

	queryString := WriteStream on: String new. 
	queryString nextPutAll: ' where '.
	queryParams do: [ :e |
		( e class = Association ) ifTrue: [
			k := e key asString.
			( e value class = Array )
				ifTrue: [
					( ( e value ) includes: 'or' ) ifTrue: [ 
						( e value ) do: [ :x | 
							( x = 'or' ) 
								ifTrue: [ 
									queryString nextPutAll: ' or ' 
								]
								ifFalse: [ 
									queryString nextPutAll: k; 
									nextPut: $=; 
									nextPutAll: ( x surroundedBySingleQuotes ) 
								].
						] 
					].
					( ( e value ) includes: 'like' ) ifTrue: [
						queryString space;
						nextPutAll: k;
						space;
						nextPutAll: ( ( e value  ) at: 1 );
						space; 
						nextPut: $';
						nextPut: $%;
						nextPutAll: ( ( e value ) at: 2 );
						nextPut: $%;
						nextPut: $'. 
					].
				]
				ifFalse: [  
					queryString space;
					nextPutAll: k; 
					nextPut: $=;
					nextPutAll: ( ( e value asString ) surroundedBySingleQuotes ).
				]
		]		 
	]
	separatedBy: [ queryString nextPutAll: ' and ' ].
	queryString nextPut: $;.
		
	^ queryString contents.