private accessing
pageComponent
	^ pageComponent ifNil: [ pageComponent := self createPageComponent ]