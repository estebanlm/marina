initialization
createDrawer
	^ MDLIconDrawerSection new
			links: (screens  collect: [ :each | 
				MDLNavigationLinkWithIconComponent new
					callback: [ self activeScreen: each ];
					iconUrl: (MRFileLibrary / each icon);
					label: each title ]);
			yourself