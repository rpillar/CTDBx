initialization
tableFields

	| definition tableField |
	
	definition := { 'manufacturer'->String . 'model'->String . 'year'->SmallInteger . 'type'->String }.
	
	^ definition collect: [ :fieldDefinition | 
		tableField := CTDBxTableField new. 
		tableField name: fieldDefinition key. 
		tableField type: fieldDefinition value.
	].