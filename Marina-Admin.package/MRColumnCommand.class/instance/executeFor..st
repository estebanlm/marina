executing
executeFor: anObject 
	self target 
		perform: self selector 
		with: anObject