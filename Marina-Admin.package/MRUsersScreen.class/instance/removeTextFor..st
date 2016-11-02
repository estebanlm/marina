accessing
removeTextFor: anUser
	^ 'You are going to remove "{1}". Are you sure?' format: { anUser fullName }
	