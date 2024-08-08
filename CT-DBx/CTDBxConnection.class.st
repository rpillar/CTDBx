"
The 'connection' instance for CTDBx.
"
Class {
	#name : 'CTDBxConnection',
	#superclass : 'Object',
	#instVars : [
		'dbConnection'
	],
	#category : 'CT-DBx',
	#package : 'CT-DBx'
}

{ #category : 'accessing' }
CTDBxConnection >> dbConnection [
	^ dbConnection
]

{ #category : 'accessing' }
CTDBxConnection >> dbConnection: anObject [
	dbConnection := anObject
]

{ #category : 'initialization' }
CTDBxConnection >> initialize [

	super initialize.
]
