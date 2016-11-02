private factory
createPageComponent
	^ self page asComponent
		addDecoration: (MDLMAFormDecoration 
			buttons: { 
				[ :c | self basicShowScreen: self parent ] -> 'Cancel'.
				#save -> 'Apply'.
				[ :c | c saveThen: [ self basicShowScreen: self parent ] ] -> 'Apply and close' 
			});
		onAnswer: [ :v | v ifNotNil: [ self savePost: v ] ];
		yourself
