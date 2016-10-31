rendering
createStructureDefinition
	^ (MRNewStructureDefinition structure: self structure)
		availableStructureClasses: { MRTemplate };
		yourself