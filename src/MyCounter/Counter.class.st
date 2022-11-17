"
`Counter` es una clase concreta simple que admite incrementos y decrementos. 
Su API es 
- `decrement` and `increment`
- `count`
Su mensaje de creación es `start At:`
"
Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #MyCounter
}

{ #category : #accessing }
Counter class >> startingAt: anInteger [
	^ self new count: anInteger.
]

{ #category : #accessing }
Counter >> count [
	^ count
]

{ #category : #accessing }
Counter >> count: unNumero [

	count := unNumero
]

{ #category : #operations }
Counter >> decrement [
	count := count - 1
]

{ #category : #operations }
Counter >> increment [
	count := count + 1.
]

{ #category : #initialization }
Counter >> initialize [ 
	count := 0.
]

{ #category : #printing }
Counter >> printOn: aStream [

	super printOn: aStream.
	aStream
		nextPutAll: ' with value: ';
		nextPutAll: count printString
]
