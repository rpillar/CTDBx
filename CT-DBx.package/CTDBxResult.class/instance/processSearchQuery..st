process actions
processSearchQuery: queryString
	
	"returns a set of results - rows - as an OrderedCollection of dictionaries."
	
	| dataRow dataset |
	
	dataset := OrderedCollection new.
	dataset := ( self conn execute: queryString ) rows collect: [ :r | 		
		dataRow := Dictionary new.				
		r data keysDo: [ :field |
				dataRow at: field put: ( r at: field )  
			].				
			dataRow.
		].
	
	self result: dataset.