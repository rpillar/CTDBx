accessing
rPerformance

	"this method returns the results of a 'relationship'  query between the car table and the performance table."
	| rs |
	self query queryTable: 'CTDBxResultTablePerformance'; dbSearch: { { #name -> self model } }.
	rs := CTDBxResultTablePerformance new. 
	rs conn: self conn.
	rs resultset: ( rs processSearchQuery: query queryString ).
	^ rs.