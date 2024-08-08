"
A CTDBxResult is the 'schema' like class that executes the querystring created by CTDBxQuery. Returns an OrderedCollection containing a set of dictionary 'data' objects - stored in the 'resulset'. 

All table model objects should inherit from CTDBxResult - the 'current' set of table variables will be stored in the object instance. 
"
Class {
	#name : 'CTDBxResult',
	#superclass : 'Object',
	#instVars : [
		'conn',
		'fields',
		'primaryKey',
		'query',
		'resultset',
		'rsPointer',
		'tableName'
	],
	#category : 'CT-DBx-Base',
	#package : 'CT-DBx',
	#tag : 'Base'
}

{ #category : 'accessing' }
CTDBxResult >> conn [
	^ conn
]

{ #category : 'accessing' }
CTDBxResult >> conn: anObject [
	conn := anObject
]

{ #category : 'accessing' }
CTDBxResult >> fields [
	^ fields
]

{ #category : 'accessing' }
CTDBxResult >> fields: anObject [
	fields := anObject
]

{ #category : 'initialization' }
CTDBxResult >> initialize [ 
	super initialize.
	self conn: CTDBxConnection new.
	self query: CTDBxQuery new.
]

{ #category : 'accessing' }
CTDBxResult >> next [ 

	"set results instance variables to the _next_ occurence in the _resultset_"

	( self resultset size > self rsPointer ) ifTrue: [ 
		self rsPointer: self rsPointer + 1.
		self fields do: [ :field |
			self instVarNamed: ( field asString ) put: ( ( self resultset at: self rsPointer ) at: field ).
		]
	] 
]

{ #category : 'accessing' }
CTDBxResult >> primaryKey [
	^ primaryKey
]

{ #category : 'accessing' }
CTDBxResult >> primaryKey: anObject [
	primaryKey := anObject
]

{ #category : 'process actions' }
CTDBxResult >> processSearchQuery: queryString [
	
	"returns a set of results - rows - as an OrderedCollection of dictionaries on the basis of the supplied querystring."
	| dataCount dataRow dataset |
	
	dataCount := 1.
	dataset := OrderedCollection new.
	^ dataset := ( self conn execute: queryString ) rows collect: [ :r | 		
		dataRow := Dictionary new.				
		r data keysDo: [ :field |
			( field isNumber ) ifFalse: [ 
				dataRow at: field put: ( r at: field ).
				( dataCount = 1 ) ifTrue: [ 
					self instVarNamed: ( field asString ) put: ( r at: field ).
				]
			]
		].	
		dataCount := dataCount + 1.			
		dataRow.
	].
	
]

{ #category : 'accessing' }
CTDBxResult >> query [
	^ query
]

{ #category : 'accessing' }
CTDBxResult >> query: anObject [
	query := anObject
]

{ #category : 'accessing' }
CTDBxResult >> resultset [
	^ resultset
]

{ #category : 'accessing' }
CTDBxResult >> resultset: anObject [
	resultset := anObject
]

{ #category : 'accessing' }
CTDBxResult >> rsPointer [
	^ rsPointer
]

{ #category : 'accessing' }
CTDBxResult >> rsPointer: anObject [
	rsPointer := anObject
]

{ #category : 'accessing' }
CTDBxResult >> tableName [
	^ tableName
]

{ #category : 'accessing' }
CTDBxResult >> tableName: anObject [
	tableName := anObject
]
