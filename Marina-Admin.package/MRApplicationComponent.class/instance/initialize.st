initialization
initialize
	super initialize.
	self primaryColor: MDLColor cyan secondaryColor: MDLColor lightBlue.
	screens := { 
		MRPagesScreen new.
		MRTemplatesScreen new.
		MRUsersScreen new }, 
		(self root blogs collect: [ :each | MRBlogScreen structure: each ]).
	screens do: [ :each | each root: self ].
	activeScreen := screens first.
	
	self 
		addDecoration: (MDLScreenFooter newWithFooter: self createFooter);
		addDecoration: (MDLScreenLayout newWithLayout: self createLayout).
	