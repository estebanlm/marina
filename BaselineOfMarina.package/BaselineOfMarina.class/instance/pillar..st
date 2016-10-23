external projects
pillar: spec
	spec
		configuration: 'Pillar'
		with: [ 
			spec
				versionString: #stable;
				loads: #('parser' 'html exporter' 'text exporter');
				repository: 'http://smalltalkhub.com/mc/Pier/Pillar/main/' ]