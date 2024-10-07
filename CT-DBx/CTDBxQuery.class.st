"
Base class for database tables - provides a standard set of methods.

Takes a query in the form of a set of Associations - for example :-
```
{ { #name -> 'Richard' . #age -> 21 } }
```
or - a more complicated example :-
```
{ 
	{ #name -> #( #or 'Richard' 'Dawn' ) . #age -> 21 } 
	. { #name -> #( #orderby desc ) } 
}
```
and populates the variable 'queryString'. with something like :-
```
select name, address, age from customer  where  name='Richard' and  age='21';
```

"
Class {
	#name : 'CTDBxQuery',
	#superclass : 'Object',
	#instVars : [
		'queryString',
		'queryTable'
	],
	#category : 'CT-DBx-Base',
	#package : 'CT-DBx',
	#tag : 'Base'
}

{ #category : 'accessing - data' }
CTDBxQuery >> dbCount [

	"return a count of the number of rows that match the key / values supplied."
	| tableObject |

	"create the required table object"
	tableObject := ( Smalltalk at: ( self queryTable ) asSymbol ) new.
	
	self queryString: 'select count(*) from ', tableObject tableName, ';'.		
]

{ #category : 'accessing - data' }
CTDBxQuery >> dbCreate: aDataDict [

	"create an 'insert query string for the specified table"
	| fieldsString tableObject valuesString |
	
	"create the required table object"
	tableObject := ( Smalltalk at: (self queryTable ) asSymbol ) new.
	
	"create the fields portion of the query"
	fieldsString := self helperCreateInsertFieldsString: aDataDict.

	"create the values portion of the query"
	valuesString := self helperCreateValuesString: aDataDict.
	self queryString: 'insert into ', tableObject tableName, ' ', fieldsString, ' values ', valuesString, ';'.
]

{ #category : 'accessing - data' }
CTDBxQuery >> dbCreateOrUpdate: aDataDict [

	"this method is in the wrong place - maybe ...."
	| fieldsString primaryKeyValue tableObject updateCheck updateString valuesString |

	"create the required table object"
	tableObject := ( Smalltalk at: ( ( self queryTable ) asSymbol ) ) new.
		
	"create the fields portion of the query"
	fieldsString := self helperCreateInsertFieldsString: tableObject.

	"Does this data already exist - primary key."
	primaryKeyValue := aDataDict at: tableObject primaryKey.
	
	updateCheck := self helperCheckForExistence: primaryKeyValue on: tableObject.
	( updateCheck ) 
		ifTrue: [ 
			updateString := self helperCreateUpdateString: aDataDict on: tableObject. 
			self queryString: 'update ', tableObject tableName, updateString, ' where ', self primaryKey, '=', primaryKeyValue surroundedBySingleQuotes.  
		]
		ifFalse: [ 
			valuesString := self helperCreateValuesString: aDataDict on: tableObject.
			self queryString: 'insert into ', self tableName, ' ', fieldsString, ' values ', valuesString. 
		].
]

{ #category : 'accessing - data' }
CTDBxQuery >> dbDelete: aDataDict [
	
	"Note - can only <delete> based on the primary key value (update to come)"
	| query tableObject |
	
	"create the required table object"
	tableObject := ( Smalltalk at: (self queryTable ) asSymbol ) new.
	
	query := WriteStream on: String new. 
	query nextPutAll: 'delete from';
		space;
		nextPutAll: tableObject tableName;
		space;
		nextPutAll: 'where';
		space.

	query := self helperProcessPrimaryKeys: tableObject primaryKey on: query with: aDataDict.
		
	self queryString: query contents.
]

{ #category : 'accessing - data' }
CTDBxQuery >> dbSearch: queryParams [

	"generic 'select * from <table> where ....' - queryParams - in the form of -> { { #year -> 13 } }"

	"retrieve ALL data that matches the key / values supplied."
	| tableFields tableObject whereString |

	"create the required table object"
	tableObject := ( Smalltalk at: ( self queryTable ) asSymbol ) new.
	
	"create the _fields_ portion of the query"
	tableFields := self helperCreateQueryFieldsString: tableObject.
	
	"parse the query params to create the queryString - and store."
	whereString := self parseSearchQueryParams: queryParams.
	self queryString: 'select ' , tableFields ,  ' from ', tableObject tableName, ' ', whereString.		
]

{ #category : 'accessing - data' }
CTDBxQuery >> dbSearchAll [

	"get _all_ rows from the specified table - be careful."
	| tableFields tableObject |
		
	"create the required table object"
	tableObject := ( Smalltalk at: (self queryTable ) asSymbol ) new.

	"create the _fields_ portion of the query"
	tableFields := self helperCreateQueryFieldsString: tableObject.
		
	self queryString: 'select ' , tableFields , ' from ' , tableObject tableName, ';'.
]

{ #category : 'accessing - data' }
CTDBxQuery >> dbSearchAllOrderedBy: aField order: anOrder limit: aNumber [

	"get _all_ rows from the specified table - but you may want to limit that search to the first n rows"
	| tableFields tableObject |
		
	"create the required table object"
	tableObject := ( Smalltalk at: (self queryTable ) asSymbol ) new.

	"create the _fields_ portion of the query"
	tableFields := self helperCreateQueryFieldsString: tableObject.

	self queryString: 'select ' , tableFields , ' from ' , tableObject tableName, 'orderby ', aField, ' ', anOrder, ' LIMIT ', ( aNumber asString ), ';'.	
]

{ #category : 'accessing - data' }
CTDBxQuery >> dbSearchAllWithLimit: aNumber [

	"get _all_ rows from the specified table - but you may want to limit that search to the first n rows"
	| tableFields tableObject |
		
	"create the required table object"
	tableObject := ( Smalltalk at: (self queryTable ) asSymbol ) new.

	"create the _fields_ portion of the query"
	tableFields := self helperCreateQueryFieldsString: tableObject.

	self queryString: 'select ' , tableFields , ' from ' , tableObject tableName, ' LIMIT ', ( aNumber asString ), ';'.	
]

{ #category : 'accessing - data' }
CTDBxQuery >> dbSearchCount: queryParams [

	"return a count of the number of rows that match the key / values supplied."
	| tableObject whereString |

	"create the required table object"
	tableObject := ( Smalltalk at: (self queryTable ) asSymbol ) new.
	
	whereString := self parseSearchQueryParams: queryParams.
	self queryString: 'select count(*) from ', tableObject tableName, ' ', whereString.		
]

{ #category : 'accessing - data' }
CTDBxQuery >> dbSearchFirst: queryParams [

	"retrieve only the first data that matches the key / values supplied."
	| tableObject whereString |

	"create the required table object"
	tableObject := ( Smalltalk at: (self queryTable ) asSymbol ) new.
	
	whereString := self parseSearchQueryParams: queryParams.
	self queryString: 'select * from ', tableObject tableName, ' ', whereString, ' LIMIT 1'.	
]

{ #category : 'accessing - data' }
CTDBxQuery >> dbUpdate: aDataDict [

	"create an update query string for the specified table"
	| query tableObject updateString |
	
	"create the required table object"
	tableObject := ( Smalltalk at: (self queryTable ) asSymbol ) new.

	"create the values portion of the query"
	query := WriteStream on: String new.
	updateString := self helperCreateUpdateString: aDataDict on: tableObject.

	query nextPutAll: 'update';
		space;
		nextPutAll: ( tableObject tableName );
		space;
		nextPutAll: updateString;
		nextPutAll: 'where';
		space.
		
	query := self helperProcessPrimaryKeys: tableObject primaryKey on: query with: aDataDict.
	
	self queryString: query contents.
]

{ #category : 'helper' }
CTDBxQuery >> helperCheckForExistence: primaryKeyValue on: tableObject [
	
	self queryString: 'select * from ', self queryTable, ' where ', tableObject primaryKey, '=', primaryKeyValue surroundedBySingleQuotes, ';'.
	
]

{ #category : 'helper' }
CTDBxQuery >> helperCreateInsertFieldsString: aDataDict [
	
	| fieldsString |
	
	"create the fields portion of the query - from the supplied dictionary"
	fieldsString := WriteStream on: String new. 
	fieldsString nextPut: $(.
	( aDataDict keys ) do: [ :each | 
			fieldsString nextPutAll: each 
		] 
		separatedBy: [ fieldsString nextPut: $, ].
		
	fieldsString nextPut: $).

	^ fieldsString contents.
]

{ #category : 'helper' }
CTDBxQuery >> helperCreateQueryFieldsString: tableObject [
	
	| fieldsString |
	
	"create the fields portion of the query - based on the tableObject passed in"
	fieldsString := WriteStream on: String new. 
	( tableObject fields ) do: [ :each | 
			fieldsString nextPutAll: each 
		] 
		separatedBy: [ fieldsString nextPut: $, ].
	
	^ fieldsString contents.
]

{ #category : 'helper' }
CTDBxQuery >> helperCreateUpdateString: aDataDict on: tableObject [
	
	| updateString |
	
	"create the update portion of the query - Note : primary key field is removed from processing"
	"probably needs to be updated to process tables where the <primary key> is an amalgam of keys"
	updateString := WriteStream on: String new. 
	updateString nextPutAll: ' set';
		space.
	
	"tableObject fields"
	aDataDict keys 
		select: [ :each | each asString ~= tableObject primaryKey ] 
		thenDo: [ :each |
			updateString nextPutAll: each asString;
			nextPut:  $=;
			nextPutAll: ( ( aDataDict at: each ) surroundedBy: $" asString );
			nextPut: $,
		].
	
	"remove trailing comma ..."
	^ ( updateString contents ) allButLast.
]

{ #category : 'helper' }
CTDBxQuery >> helperCreateValuesString: aDataDict [
	
	| valuesString |
	
	"create the values portion of the query based on the passed dictionary"
	valuesString := WriteStream on: String new.
	valuesString nextPut: $(.
	aDataDict keys do: [ :each |
		( ( aDataDict at: each ) isInteger ) 
			ifTrue: [  
				valuesString nextPutAll: ( ( aDataDict at: each ) asString )
			]
			ifFalse: [
				valuesString nextPutAll: ( ( ( aDataDict at: each ) asString ) surroundedBy: $" asString ) 
			]
	] 
	separatedBy: [ valuesString nextPut: $, ].
		
	valuesString nextPut: $).

	^ valuesString contents.
]

{ #category : 'helper' }
CTDBxQuery >> helperCreateValuesString: aDataDict on: tableObject [
	
	| valuesString |
	
	"create the values portion of the query - do I need this !!! "
	valuesString := WriteStream on: String new.
	valuesString nextPut: $(.
	aDataDict keys do: [ :each |
		valuesString nextPutAll: ( ( aDataDict at: ( each asSymbol ) ) surroundedBy: $" asString ) 
	] 
	separatedBy: [ valuesString nextPut: $, ].
		
	valuesString nextPut: $).

	^ valuesString contents.
]

{ #category : 'helper' }
CTDBxQuery >> helperProcessPrimaryKeyData: key on: query with: data [

	"check / process if key is integer or a string"
	( ( data at: key ) isInteger )
		ifTrue: [ 
			query nextPutAll: ( ( data at: ( ( key ) asSymbol ) ) asString ) 
		]
		ifFalse: [ 
			query nextPutAll: ( data at: ( key ) asSymbol ) surroundedBySingleQuotes 
		].
		
	^ query.
]

{ #category : 'helper' }
CTDBxQuery >> helperProcessPrimaryKeys: keys on: query with: data [
	
	( keys isArray ) ifTrue: [ 
		keys do: [ :key |
			query nextPutAll: key;
				nextPut: $=.
			self helperProcessPrimaryKeyData: key on: query with: data.
		]
		separatedBy: [ query nextPutAll: ' and ' ].
	]
	ifFalse: [ 	
		query nextPutAll: keys;
			nextPut: $=.
		self helperProcessPrimaryKeyData: keys on: query with: data.
	].

	^ query.
]

{ #category : 'initialization' }
CTDBxQuery >> initialize [

	super initialize. 
]

{ #category : 'initialization' }
CTDBxQuery >> parseSearchQueryBetweenParamOn: e with: key updating: whereString [

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
]

{ #category : 'initialization' }
CTDBxQuery >> parseSearchQueryComparisonParamOn: e with: key updating: whereString [

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
]

{ #category : 'initialization' }
CTDBxQuery >> parseSearchQueryLikeParamOn: e with: key updating: whereString [

	"process the 'like' portion of the query string"
	( ( e value first ) = #like ) ifTrue: [
		whereString space;
			nextPutAll: key;
			space;
			nextPutAll: ' like ';
			space; 
			nextPut: $';
			nextPut: $%;
			nextPutAll: ( ( e value ) at: 2 );
			nextPut: $%;
			nextPut: $'. 
	].

	^ whereString. 
]

{ #category : 'initialization' }
CTDBxQuery >> parseSearchQueryLimitParamOn: e updating: whereString [

	"process the 'limit' portion of the query string"
	( ( e key ) = #limit ) ifTrue: [ 
		whereString nextPutAll: ' limit ';
		nextPutAll: e value asString.
	].

	^ whereString. 
]

{ #category : 'initialization' }
CTDBxQuery >> parseSearchQueryOrParamOn: e with: key updating: whereString [

	"process the 'or' portion of the query string"
	| a1 |
	( ( e value first ) = #or ) ifTrue: [ 
		a1 := ( e value ) allButFirst.
		whereString nextPut: $(.
		a1 do: [ :x | 
			whereString nextPutAll: key; 
			nextPut: $=; 
			nextPutAll: ( self parseSearchQueryParamFormat: x )
		]
		separatedBy: [ whereString nextPutAll: ' or ' ].
		whereString nextPut: $).
	].

	^ whereString. 
]

{ #category : 'initialization' }
CTDBxQuery >> parseSearchQueryOrderbyParamOn: e with: key updating: whereString [

	"process the 'order by' portion of the query string"
	( ( e value first ) = #orderby ) ifTrue: [ 
		whereString nextPutAll: ' order by ';
		nextPutAll: key;
		space;
		nextPutAll: e value second asString.
	].

	^ whereString. 
]

{ #category : 'processing' }
CTDBxQuery >> parseSearchQueryParamFormat: aValue [

	"handle the formating of integer / string value parameters in the query string"
	( aValue isInteger ) 
		ifTrue: [  
			^ aValue asString
		]
		ifFalse: [
			^ ( aValue surroundedBy: $" asString ) 
		].
]

{ #category : 'processing' }
CTDBxQuery >> parseSearchQueryParams: queryParams [

	| k whereString | 
	"receive query params as an array of associations - parse into a query string and return. 
	 Processing of more complex queries will be added ..."
	
	"the queryParams will (in its simplest form be an association - { { #year -> 13 } } - for example."

	whereString := WriteStream on: String new . 
	whereString nextPutAll: ' where '.

	"the <base> query"
	( queryParams at: 1 ) do: [ :e |
		( e class = Association ) ifTrue: [
			k := e key asString.

			( e value class = Array )
				ifTrue: [
					whereString := self parseSearchQueryComparisonParamOn: e with: k updating: whereString. 
					
					whereString := self parseSearchQueryOrParamOn: e with: k updating: whereString. 
					whereString := self parseSearchQueryLikeParamOn: e with: k  updating: whereString.
					whereString := self parseSearchQueryBetweenParamOn: e with: k  updating: whereString.
				]
				ifFalse: [  
					whereString space;
						nextPutAll: k; 
						space;
						nextPut: $=;
						space;
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
]

{ #category : 'accessing' }
CTDBxQuery >> queryString [
	^ queryString
]

{ #category : 'accessing' }
CTDBxQuery >> queryString: anObject [
	queryString := anObject
]

{ #category : 'accessing' }
CTDBxQuery >> queryTable [
	^ queryTable
]

{ #category : 'accessing' }
CTDBxQuery >> queryTable: anObject [
	queryTable := anObject
]
