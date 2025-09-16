Class {
	#name : 'MGCard',
	#superclass : 'Object',
	#instVars : [
		'symbol',
		'flipped',
		'announcer'
	],
	#category : 'Bloc-Memory-Model',
	#package : 'Bloc-Memory',
	#tag : 'Model'
}

{ #category : 'initialization' }
MGCard >> announcer [
 ^ announcer ifNil: [ announcer := Announcer new ]




]

{ #category : 'initialization' }
MGCard >> initialize [ 
 super initialize. 
 flipped := false.

]

{ #category : 'initialization' }
MGCard >> isFlipped [
 ^ flipped 




]

{ #category : 'initialization' }
MGCard >> symbol [
 ^ symbol



]

{ #category : 'initialization' }
MGCard >> symbol: aCharacter [
 symbol := aCharacter.

]
