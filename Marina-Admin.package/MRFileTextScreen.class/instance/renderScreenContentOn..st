rendering
renderScreenContentOn: html
	html div 
		class: 'structure-text';
		with: [ 
			html preformatted with: [ 
				html html: self file textContents ] ]