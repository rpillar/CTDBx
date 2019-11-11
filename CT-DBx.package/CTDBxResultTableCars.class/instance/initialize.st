initialization
initialize 

	super initialize.
	self fields: #( manufacturer model type year ).
	self tableName: 'cars'.
	self primaryKey: 'manufacturer'.
	self rsPointer: 1.