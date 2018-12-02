accessing - data
dbSearch: queryParams on: aTable with: fields

	"retrieve ALL data that matches the key / values supplied."
	| queryString whereString |

	whereString := self parseSearchQueryParams: queryParams.
	queryString := 'select * from ', aTable, ' ', whereString.		

	"execute query ..."	
	^ ( self processSearchQuery: queryString with: fields).	