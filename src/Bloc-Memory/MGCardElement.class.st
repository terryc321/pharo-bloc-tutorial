"
In Bloc, BlElements draw themselves onto the integrated canvas of the in-
spector as we inspect them, take a look at our element by executing this (See
Figure 3-1).
```
MGCardElement new inspect
```

"	      

Class {
	#name : 'MGCardElement',
	#superclass : 'BlElement',
	#instVars : [
'card'
],
	#category : 'Bloc-Memory-Elements',
	#package : 'Bloc-Memory',
	#tag : 'Elements'
    }


      MGCardElement >> card [
	  ^ card  
      ]

MGCardElement >> card: aMgCard [
    card  := aMgCard
]


MGCardElement >> backgroundPaint [
    "Return a BlPaint that should be used as a background (fill)
of both back and face sides of the card. Colors are polymorphic
with BlPaint and therefore can be used too."
    ^ Color pink darker
]


MGCardElement >> initialize [
    super initialize.
    self size: 80 @ 80.
    "A BlBackground is needed for the #background: method, but the
BlPaint
is polymorphic with BlBackground and therefore can be used too."
    self background: self backgroundPaint.
    self geometry: BlCircleGeometry new.
    self card: (MGCard new symbol: $a)			     
]

