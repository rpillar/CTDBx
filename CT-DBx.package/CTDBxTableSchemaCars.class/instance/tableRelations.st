initialization
tableRelations

	| relationDefinition tableRelation |
	
	relationDefinition := { 
		{ #table->'Performance' . #field->'name' . #matchedOn->'model' } asDictionary.
	}.
	
	^ relationDefinition collect: [ :relationship | 
		tableRelation := CTDBxTableRelationship new. 
		tableRelation table: ( relationship at: #table ). 
		tableRelation field: ( relationship at: #field ).
		tableRelation matchedOn: ( relationship at: #matchedOn ) 
	].