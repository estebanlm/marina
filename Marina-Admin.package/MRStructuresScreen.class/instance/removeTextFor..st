accessing
removeTextFor: aStructure
	^ 'You are going to remove "{1}". Are you sure?' format: { aStructure title }
	