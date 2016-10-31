instance creation
default
	^ Default ifNil: [ Default := self specification: self defaultSpecification ]