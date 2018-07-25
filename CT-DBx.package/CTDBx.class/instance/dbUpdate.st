accessing - data
dbUpdate

	"update based on the state of the current model."
	| queryString |

	"query string - update table set x = y where id = 1"
	queryString := 'update ', self dbTableName, ' set '.			
	self dbFields do: [ :field | 
		queryString := queryString, field, '="', ( self instVarNamed: field ) asString, '",' 
	].

	"what if primary key is a composite key ...."
	queryString := queryString allButLast.
	queryString := queryString, ' where ', self dbTablePrimaryKey, '= "', ( self instVarNamed: self dbTablePrimaryKey ) asString, '";'.

	"execute query ..."
	self database dbConnection execute: queryString.