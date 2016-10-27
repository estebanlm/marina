accessing
tableDataClass
	^ tableDataClass ifNil: [ self class defaultTableDataClass ]