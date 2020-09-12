helper
helperProcessPrimaryKeys: keys on: query with: data
	
	( keys isArray ) ifTrue: [ 
		keys do: [ :key |
			query nextPutAll: key;
				nextPut: $=.
			self helperProcessPrimaryKeyData: key on: query with: data.
			"query nextPutAll: ' and '."
		]
		separatedBy: [ query nextPutAll: ' and ' ].
	]
	ifFalse: [ 	
		query nextPutAll: keys;
			nextPut: $=.
		self helperProcessPrimaryKeyData: keys on: query with: data.
	].

	^ query.