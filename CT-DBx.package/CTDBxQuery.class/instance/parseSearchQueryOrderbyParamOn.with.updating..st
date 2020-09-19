initialization
parseSearchQueryOrderbyParamOn: e with: key updating: whereString

	"process the 'order by' portion of the query string"
	( ( e value first ) = #orderby ) ifTrue: [ 
		whereString nextPutAll: ' order by ';
		nextPutAll: key;
		space;
		nextPutAll: e value second asString.
	].

	^ whereString. 