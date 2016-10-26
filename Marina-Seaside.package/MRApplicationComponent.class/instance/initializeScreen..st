initialization
initializeScreen: aScreen
	aScreen 
		addDecoration: (MDLScreenFooter newWithFooter: self createFooter);
		addDecoration: (MDLScreenLayout newWithLayout: self createLayout);
		root: self