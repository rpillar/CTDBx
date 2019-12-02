accessing
next 

	"set results instance variables to the _next_ occurence in the _resultset_"

	( self resultset size > self rsPointer ) ifTrue: [ 
		self rsPointer: self rsPointer + 1.
		self fields do: [ :field |
			self instVarNamed: ( field asString ) put: ( ( self resultset at: self rsPointer ) at: field ).
		]
	] 