parsing
parse: aString
	^ (self formatter parse: aString) asDateAndTime 