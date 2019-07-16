initialization
parseSearchQueryOrderbyParamOn: e with: key updating: whereString

	( ( e value first ) = #orderby ) ifTrue: [ 
		whereString nextPutAll: ' order by ';
		nextPutAll: key;
		space;
		nextPutAll: e value second asString.
	].

	^ whereString. 