flow
callScreen: aScreen
	self initializeScreen: aScreen.
	^ activeScreen call: aScreen