initialization
parseSearchQueryLimitParamOn: e updating: whereString

	"process the 'limit' portion of the query string"
	( ( e key ) = #limit ) ifTrue: [ 
		whereString nextPutAll: ' limit ';
		nextPutAll: e value asString.
	].

	^ whereString. 