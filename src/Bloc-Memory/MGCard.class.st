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
MGCard >> disappear [
self notifyDisappear




]

{ #category : 'initialization' }
MGCard >> flip [
 flipped := flipped not.
 self notifyFlipped.






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
MGCard >> notifyDisappear [
 self announcer announce: MGCardDisappearAnnouncement new






]

{ #category : 'initialization' }
MGCard >> notifyFlipped [
 self announcer announce: MGCardFlippedAnnouncement new





]

{ #category : 'initialization' }
MGCard >> printOn: aStream [
aStream 
nextPutAll: 'Card';
nextPut: Character space;
nextPut: $( ;
nextPut: self symbol;
nextPut: $)







]

{ #category : 'initialization' }
MGCard >> symbol [
 ^ symbol



]

{ #category : 'initialization' }
MGCard >> symbol: aCharacter [
 symbol := aCharacter.

]
