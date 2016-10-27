private
uniqueDescriptionSelectors: anObject
	| descriptionPragmas selectors |
	
	descriptionPragmas := Pragma 
		allNamed: self class magritteDescriptionPragma 
		from: anObject class to: Object.
	
	descriptionPragmas := descriptionPragmas select: [ :each | 
		(each method pragmaAt: self class hiddenPragma) isNil
			and: [ 
				self presenter isNil 
				or: [ (each method pragmaAt: self presenter) notNil ] ] ].
			
	selectors := descriptionPragmas collect: [ :each | each method selector ].
	
	^ Set withAll: selectors