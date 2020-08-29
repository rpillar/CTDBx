helper
helperProcessPrimaryKeys: keys on: query with: data
	
	( keys isArray ) ifTrue: [ 
		keys do: [ :key |
			self helperProcessPrimaryKeyData: key on: query with: data.
		]
	]
	ifFalse: [ 	
		query nextPutAll: keys;
			nextPut: $=.
		self helperProcessPrimaryKeyData: keys on: query with: data.
	].

	^ query.