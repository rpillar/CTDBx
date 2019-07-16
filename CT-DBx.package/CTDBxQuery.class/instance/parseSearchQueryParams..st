processing
parseSearchQueryParams: queryParams

	| k whereString| 
	"receive query params as an array of associations - parse into a query string and return. 
	  Processing of more complex queries will be added ..."

	whereString := WriteStream on: String new . 
	whereString nextPutAll: ' where '.

	"the <base> query"
	( queryParams at: 1 ) do: [ :e |
		( e class = Association ) ifTrue: [
			k := e key asString.
			( e value class = Array )
				ifTrue: [
					whereString := self parseSearchQueryOrParamOn: e with: k updating: whereString. 
					whereString := self parseSearchQueryLikeParamOn: e with: k  updating: whereString.
					whereString :=self parseSearchQueryBetweenParamOn: e with: k  updating: whereString.
				]
				ifFalse: [  
					whereString space;
						nextPutAll: k; 
						nextPut: $=;
						nextPutAll: ( ( e value asString ) surroundedBySingleQuotes ).
				]
		]		 
	]
	separatedBy: [ whereString nextPutAll: ' and ' ].
	
	"the second element will contain things like the <order by> or <limit> keywords"
	( queryParams size > 1 ) ifTrue: [
		( queryParams at: 2 ) do: [ :e |
			( e class = Association ) ifTrue: [
				k := e key asString.
				( e value class = Array )
					ifTrue: [
						whereString := self parseSearchQueryOrderbyParamOn: e with: k updating: whereString.
					]
					ifFalse: [  
						whereString := self parseSearchQueryLimitParamOn: e updating: whereString.
					]
			]
		]		 
	].
	whereString nextPut: $;.
		
	^ whereString contents.