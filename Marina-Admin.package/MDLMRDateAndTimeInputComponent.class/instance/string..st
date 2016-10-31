accessing-model
string: aString
	^ self value: (MRDateAndTimeFormatter default parse: aString)