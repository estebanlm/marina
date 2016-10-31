*Marina-Admin
descriptionContainer
	<magritteContainer>
	^ super descriptionContainer
		componentRenderer: MDLMAFormRenderer;
		"addCondition: [ :v | self halt ] labelled: 'Error!';"
		yourself