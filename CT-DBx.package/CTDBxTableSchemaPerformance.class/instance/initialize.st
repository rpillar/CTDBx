initialization
initialize 

	super initialize.
	
	self tableName ifNil: [ self tableName: 'performance' ].
	self fields ifNil: [ self fields: self tableFields ].
	self primaryKey ifNil: [ self primaryKey: 'name' ].