processing
processSearchQuery: queryString
	
	| dataRow dataset |
	
	dataset := OrderedCollection new.
	dataset := ( self database dbConnection execute: queryString ) rows collect: [ :r | 	
		dataRow := Dictionary new.				
		self dbFields do: [ :field |
				dataRow at: field asSymbol put: ( r at: field )  
			].				
			dataRow.
		].
	
	^ dataset.