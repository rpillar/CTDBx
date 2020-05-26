helper
helperCheckForExistence: primaryKeyValue on: tableObject
	
	self queryString: 'select * from ', self queryTable, ' where ', tableObject primaryKey, '=', primaryKeyValue surroundedBySingleQuotes, ';'.
	