*Marina-Admin
saveThen: aBlock
	self validate ifFalse: [ ^ self ].
	self 
		commit; 
		answer: self model.
	aBlock value