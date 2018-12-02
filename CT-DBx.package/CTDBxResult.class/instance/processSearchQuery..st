as yet unclassified
processSearchQuery: queryString
	
	| dataRow dataset |
	
	dataset := OrderedCollection new.
	dataset := ( self conn dbConnection execute: queryString ) rows collect: [ :r |  		
		dataRow := Dictionary new.				
		self dbFields do: [ :field |
				dataRow at: field asSymbol put: ( r at: field )  
			].				
			dataRow.
		].
	
	^ dataset.