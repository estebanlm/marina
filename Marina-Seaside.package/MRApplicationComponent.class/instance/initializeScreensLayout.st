initialization
initializeScreensLayout
	screens do: [ :each | 
		self initializeScreen: each ]