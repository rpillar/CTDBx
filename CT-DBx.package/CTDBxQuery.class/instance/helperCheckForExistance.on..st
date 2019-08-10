helper
helperCheckForExistance: primaryKeyValue on: tableObject
	
	self queryString: 'select * from ', self queryTable, ' where ', tableObject dbTablePrimaryKey, '=', primaryKeyValue surroundedBySingleQuotes, ';'.
	"data := ( self conn dbConnection execute: queryString ).
	
	^ ( ( data next ) isNotNil )."
	