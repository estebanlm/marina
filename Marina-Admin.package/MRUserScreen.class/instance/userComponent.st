private accessing
userComponent
	^ userComponent ifNil: [ userComponent := self createUserComponent ]