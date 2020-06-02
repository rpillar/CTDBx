accessing - data
dbCount

	"return a count of the number of rows that match the key / values supplied."
	| tableObject |

	"create the required table object"
	tableObject := ( Smalltalk at: ( self queryTable ) asSymbol ) new.
	
	self queryString: 'select count(*) from ', tableObject tableName.		