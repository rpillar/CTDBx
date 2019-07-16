initialization
parseSearchQueryLimitParamOn: e updating: whereString

	( ( e key ) = #limit ) ifTrue: [ 
		whereString nextPutAll: ' limit ';
		nextPutAll: e value asString.
	].

	^ whereString. 