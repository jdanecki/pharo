"
I model argument variables. By definition, an argument variable is always initialized, and can't be written to.
"
Class {
	#name : #ArgumentVariable,
	#superclass : #LocalVariable,
	#category : #'OpalCompiler-Core-Semantics'
}

{ #category : #accessing }
ArgumentVariable class >> semanticNodeClass [

	^RBArgumentNode 
]

{ #category : #testing }
ArgumentVariable >> isArg [

	^ true
]

{ #category : #testing }
ArgumentVariable >> isUninitialized [

	^ false
]

{ #category : #testing }
ArgumentVariable >> isWritable [

	^ false
]

{ #category : #debugging }
ArgumentVariable >> writeFromContext: aContext scope: contextScope value: aValue [
	self error: 'Arguments are read only'
]