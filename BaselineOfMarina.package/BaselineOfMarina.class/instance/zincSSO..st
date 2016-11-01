external projects
zincSSO: spec
	spec
		configuration: 'ZincHTTPComponents'
		with: [ 
			spec
				versionString: #stable;
				loads: #('SSO');
				repository: 'http://mc.stfx.eu/ZincHTTPComponents' ]