rendering
renderNavigationLinkTo: aScreen on: html 
	html anchor 
		callback: [ self basicShowScreen: aScreen ];
		with: aScreen title