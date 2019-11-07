initialization
initialize 

	super initialize.
	
	self tableName ifNil: [ self tableName: 'cars' ].
	self fields ifNil: [ self fields: self tableFields ].
	self primaryKey ifNil: [ self primaryKey: 'model' ].
	self relations ifNil: [ self relations: self tableRelations ].