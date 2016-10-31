private factory
createUserComponent
	^ self user asComponent
		addDecoration: (MDLMAFormDecoration buttons: #(save));
		onAnswer: [ :v | v ifNotNil: [ self saveUser: v ] ];
		yourself
