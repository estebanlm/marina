accessing
formatter 
	^ formatter ifNil: [ formatter := ZTimestampFormat fromString: self specification ]