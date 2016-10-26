initialization
initialize
	super initialize.
	"self primaryColor: MDLColor cyan secondaryColor: MDLColor lightBlue."
	screens := { 
		MRStructuresScreen new.
		MRTemplatesScreen new.
		MRUsersScreen new }.
	activeScreen := screens first.
	self initializeScreensLayout