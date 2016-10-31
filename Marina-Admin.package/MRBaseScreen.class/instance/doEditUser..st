actions
doEditUser: anUser
	self showScreen: (MRUserScreen new
		user: anUser;
		yourself) 