initialization
initialize
	super initialize.
	"self primaryColor: MDLColor cyan secondaryColor: MDLColor lightBlue."
	screens := { 
		MRPagesScreen new.
		MRTemplatesScreen new.
		MRUsersScreen new }, 
		(self root blogs collect: [ :each | MRBlogScreen structure: each ]).
	activeScreen := screens first.
	self initializeScreensLayout