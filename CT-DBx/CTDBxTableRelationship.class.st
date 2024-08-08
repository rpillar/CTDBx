"
Experimental - I represent a 'simple' relationship between one table and another.
"
Class {
	#name : 'CTDBxTableRelationship',
	#superclass : 'Object',
	#instVars : [
		'field',
		'matchedOn',
		'query',
		'table'
	],
	#category : 'CT-DBx-Base',
	#package : 'CT-DBx',
	#tag : 'Base'
}

{ #category : 'accessing' }
CTDBxTableRelationship >> field [
	^ field
]

{ #category : 'accessing' }
CTDBxTableRelationship >> field: anObject [
	field := anObject
]

{ #category : 'accessing' }
CTDBxTableRelationship >> matchedOn [
	^ matchedOn
]

{ #category : 'accessing' }
CTDBxTableRelationship >> matchedOn: anObject [
	matchedOn := anObject
]

{ #category : 'accessing' }
CTDBxTableRelationship >> query [
	^ query
]

{ #category : 'accessing' }
CTDBxTableRelationship >> query: anObject [
	query := anObject
]

{ #category : 'accessing' }
CTDBxTableRelationship >> table [
	^ table
]

{ #category : 'accessing' }
CTDBxTableRelationship >> table: anObject [
	table := anObject
]
