initialization
createLayout
	^ MDLLayoutWidget new
		title: 'Marina';
		drawerSection: self createDrawer;
		headerSection: self createHeader;
		fixedDrawer;
		fixedHeader;
		yourself