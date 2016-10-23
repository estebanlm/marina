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
			
			spec 
				package: 'Marina' with: [ spec requires: #('Tide' 'Pillar' 'Voyage' 'XMLWriter') ];
			 	package: 'Marina-Seaside' with: [ spec requires: #('Marina' 'Seaside3') ];
				package: 'Marina-Tests' with: [ spec requires: #('Marina') ] ]