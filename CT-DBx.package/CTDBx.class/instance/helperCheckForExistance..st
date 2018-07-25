helper
helperCheckForExistance: primaryKeyValue
	
	| queryString |

	queryString := 'select * from ', self dbTableName, ' where ', self dbTablePrimaryKey, '=', primaryKeyValue surroundedBySingleQuotes, ';'.
	self dbResult: ( self database dbConnection execute: queryString ).
	
	^ ( ( self dbResult next ) isNotNil ).
	