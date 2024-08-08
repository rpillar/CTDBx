"
Example - I represent the 'cars' database table.
"
Class {
	#name : 'CTDBxResultTableCars',
	#superclass : 'CTDBxResult',
	#instVars : [
		'manufacturer',
		'model',
		'year',
		'type'
	],
	#category : 'CT-DBx-Base',
	#package : 'CT-DBx',
	#tag : 'Base'
}

{ #category : 'initialization' }
CTDBxResultTableCars >> initialize [ 

	super initialize.
	self fields: #( manufacturer model type year ).
	self tableName: 'cars'.
	self primaryKey: 'manufacturer'.
	self rsPointer: 1.
]

{ #category : 'accessing' }
CTDBxResultTableCars >> manufacturer [
	^ manufacturer
]

{ #category : 'accessing' }
CTDBxResultTableCars >> manufacturer: anObject [
	manufacturer := anObject
]

{ #category : 'accessing' }
CTDBxResultTableCars >> model [
	^ model
]

{ #category : 'accessing' }
CTDBxResultTableCars >> model: anObject [
	model := anObject
]

{ #category : 'accessing' }
CTDBxResultTableCars >> rPerformance [

	"this method returns the results of a 'relationship'  query between the car table and the performance table."
	| rs |
	self query queryTable: 'CTDBxResultTablePerformance'; dbSearch: { { #name -> self model } }.
	rs := CTDBxResultTablePerformance new. 
	rs conn: self conn.
	rs resultset: ( rs processSearchQuery: query queryString ).
	^ rs.
]

{ #category : 'accessing' }
CTDBxResultTableCars >> type [
	^ type
]

{ #category : 'accessing' }
CTDBxResultTableCars >> type: anObject [
	type := anObject
]

{ #category : 'accessing' }
CTDBxResultTableCars >> year [
	^ year
]

{ #category : 'accessing' }
CTDBxResultTableCars >> year: anObject [
	year := anObject
]
