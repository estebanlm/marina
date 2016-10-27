tools registry
register
	<script>
	^ (WAAdmin register: self asApplicationAt: self applicationName)		
		addLibrary: JQDeploymentLibrary;
		addLibrary: MDLLibrary