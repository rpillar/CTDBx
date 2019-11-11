process actions
processSearchQuery: queryString
	
	"returns a set of results - rows - as an OrderedCollection of dictionaries."
	| dataCount dataRow dataset |
	
	dataCount := 1.
	dataset := OrderedCollection new.
	^ dataset := ( self conn execute: queryString ) rows collect: [ :r | 		
		dataRow := Dictionary new.				
		r data keysDo: [ :field |
			( field isNumber ) ifFalse: [ 
				dataRow at: field put: ( r at: field ).
				( dataCount = 1 ) ifTrue: [ 
					self instVarNamed: ( field asString ) put: ( r at: field ).
				]
			]
		].	
		dataCount := dataCount + 1.			
		dataRow.
	].
	
	"store data thats returned."
	"self resultset: dataset."
	