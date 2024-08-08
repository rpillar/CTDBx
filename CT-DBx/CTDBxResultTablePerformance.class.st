"
Example - I represent the 'performance' table - related to 'cars'.
"
Class {
	#name : 'CTDBxResultTablePerformance',
	#superclass : 'CTDBxResult',
	#instVars : [
		'name',
		'speed'
	],
	#category : 'CT-DBx-Base',
	#package : 'CT-DBx',
	#tag : 'Base'
}

{ #category : 'initialization' }
CTDBxResultTablePerformance >> initialize [ 

	super initialize.
	self fields: #( name speed ).
	self tableName: 'performance'.
	self primaryKey: 'name'.
	self rsPointer: 1.
]

{ #category : 'accessing' }
CTDBxResultTablePerformance >> name [
	^ name
]

{ #category : 'accessing' }
CTDBxResultTablePerformance >> name: anObject [
	name := anObject
]

{ #category : 'accessing' }
CTDBxResultTablePerformance >> speed [
	^ speed
]

{ #category : 'accessing' }
CTDBxResultTablePerformance >> speed: anObject [
	speed := anObject
]
