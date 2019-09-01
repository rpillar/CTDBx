helper
helperCheckForExistence: primaryKeyValue on: tableObject
	
	self queryString: 'select * from ', self queryTable, ' where ', tableObject dbTablePrimaryKey, '=', primaryKeyValue surroundedBySingleQuotes, ';'.
	