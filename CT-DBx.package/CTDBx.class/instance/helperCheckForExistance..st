helper
helperCheckForExistance: primaryKeyValue
	
	| queryString |

	queryString := 'select * from ', self dbTableName, ' where ', self dbTablePrimaryKey, '=', primaryKeyValue surroundedBySingleQuotes, ';'.
	self dbResult: ( self conn dbConnection execute: queryString ).
	
	^ ( ( self dbResult next ) isNotNil ).
	