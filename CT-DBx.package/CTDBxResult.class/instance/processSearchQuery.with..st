as yet unclassified
processSearchQuery: queryString with: fields
	
	| dataRow dataset |
	
	"fields is an array - the fields I want to retrieve."
	dataset := OrderedCollection new.
	dataset := ( self conn dbConnection execute: queryString ) rows collect: [ :r |  		
		dataRow := Dictionary new.				
		fields do: [ :field |
				dataRow at: field asSymbol put: ( r at: field )  
			].				
			dataRow.
		].
	
	^ dataset.