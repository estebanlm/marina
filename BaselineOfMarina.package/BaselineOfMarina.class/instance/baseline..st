accessing
baseline: spec
	<baseline>

	spec
		for: #pharo
		do: [ 
			self voyage: spec.
			self pillar: spec.
			self mustache: spec.
			self xmlWriter: spec.
			self seaside3: spec.
			self ztimestamp: spec.
			self zincSSO: spec.
			
			spec 
				package: 'Marina' with: [ 
					spec requires: #('Pillar' 'Voyage' 'XMLWriter') ];
			 	package: 'Marina-Admin' with: [ 
					spec requires: #('Marina' 'Seaside3' 'ZTimestamp' 'ZincHTTPComponents') ];
				package: 'Marina-Tests' with: [ 
					spec requires: #('Marina') ] ]