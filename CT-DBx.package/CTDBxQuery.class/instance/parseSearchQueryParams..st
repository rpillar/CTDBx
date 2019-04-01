processing
parseSearchQueryParams: queryParams

	| k queryString | 
	"receive query params as an array of associations - parse into a query string and return. 
	  Processing of more complex queries will be added ..."

	queryString := WriteStream on: String new. 
	queryString nextPutAll: ' where '.

	"the <base> query"
	( queryParams at: 1 ) do: [ :e |
		( e class = Association ) ifTrue: [
			k := e key asString.
			( e value class = Array )
				ifTrue: [
					queryString := self parseSearchQueryOrParamOn: e with: k  updating: queryString. 
					queryString := self parseSearchQueryLikeParamOn: e with: k  updating: queryString.
					queryString := self parseSearchQueryBetweenParamOn: e with: k  updating: queryString.
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
	
	"the second element will contain things like the <order by> or <limit> keywords"
	( queryParams size > 1 ) ifTrue: [
		( queryParams at: 2 ) do: [ :e |
			( e class = Association ) ifTrue: [
				k := e key asString.
				( e value class = Array )
					ifTrue: [
						queryString := self parseSearchQueryOrderbyParamOn: e with: k updating: queryString.
					]
			]
		]		 
	].
	queryString nextPut: $;.
		
	^ queryString contents.