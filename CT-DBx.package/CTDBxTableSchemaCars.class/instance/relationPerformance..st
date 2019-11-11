initialization
relationPerformance: aValue

	"this method returns the query that will be used to resolve the relationship between the 'cars' table and the 'performance' table."

	| query |
	query := CTDBxQuery new.
	^ query queryTable: 'CTDBxTableSchemaPerformance'; dbSearch: { { #name -> aValue } }.
	
	