flow
callScreen: aScreen
	^ self root callScreen: (aScreen
		root: self root;
		parent: self;
		yourself)