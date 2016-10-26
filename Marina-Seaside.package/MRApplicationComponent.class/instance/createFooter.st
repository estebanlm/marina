initialization
createFooter
	^ MDLSmallFooter new
		onRightSideAddComponents: {
			(MDLIconComponent new iconName: 'rss_feed').
			(MDLIconComponent new iconName: 'share').
			(MDLIconComponent new iconName: 'warning') };
		"onLeftSideAddLinks: self initializeFooterLeftSideLinks;"
		yourself