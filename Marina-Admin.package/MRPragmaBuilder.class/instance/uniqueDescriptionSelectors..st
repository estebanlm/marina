private
uniqueDescriptionSelectors: anObject
	| descriptionPragmas selectors iteratingClass |
	
	descriptionPragmas := Pragma allNamed: self class magritteDescriptionPragma in: anObject class.
	iteratingClass := anObject class.
	[ iteratingClass = Object ]
		whileFalse: [ | iteratingPragmas |
			iteratingClass := iteratingClass superclass.
			iteratingPragmas := Pragma
				allNamed: self class magritteDescriptionPragma
				in: iteratingClass.
			descriptionPragmas := descriptionPragmas
				,
					(iteratingPragmas
						select: [ :eachIterating | 
							descriptionPragmas
								noneSatisfy: [ :each | each methodSelector = eachIterating methodSelector ] ]) ].

	"filter presenter-based selectors"
	descriptionPragmas := descriptionPragmas
		select: [ :each | 
			(each method pragmaAt: self class hiddenPragma) isNil
				and: [ self presenter isNil
						or: [ (each method pragmaAt: self presenter) notNil ] ] ].
	selectors := descriptionPragmas
		collect: [ :each | each method selector ].
	^ Set withAll: selectors