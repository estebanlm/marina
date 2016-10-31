accessing
allStructuresMatching: aBlock
	^ (self children select: aBlock), 
		((self children select: [ :each | each isDirectory ])  
			inject: #() 
			into: [ :all :each | all, (each allStructuresMatching: aBlock) ])