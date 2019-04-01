initialization
parseSearchQueryOrderbyParamOn: e with: key updating: queryString

	( ( e value first ) = #orderby ) ifTrue: [ 
		queryString nextPutAll: ' order by ';
		nextPutAll: key;
		space;
		nextPutAll: e value second asString.
	].

	^ queryString. 