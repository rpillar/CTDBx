under deprecation
tableRelations

	| relationDefinition tableRelation |
	
	relationDefinition := { 
		'performance' -> { #table->'Performance' . #field->'name' . #matchedOn->'model' } asDictionary.
	} asDictionary.
	
	^ relationDefinition collect: [ :relationship | 
		tableRelation := CTDBxTableRelationship new. 
		tableRelation table: ( relationship at: #table ). 
		tableRelation field: ( relationship at: #field ).
		tableRelation matchedOn: ( relationship at: #matchedOn ) 
	].