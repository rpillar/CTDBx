initialization
initialize 

	super initialize.
	self fields: #( name speed ).
	self tableName: 'performance'.
	self primaryKey: 'name'.
	self rsPointer: 1.