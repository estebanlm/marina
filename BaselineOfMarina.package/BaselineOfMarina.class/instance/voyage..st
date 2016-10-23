external projects
voyage: spec
	spec
		baseline: 'Voyage'
		with: [ 
			spec
				loads: #('mongo tests');
				repository: 'github://pharo-nosql/voyage/mc' ]