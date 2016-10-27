rendering
renderScreenContentOn: html
	html div 
		class: 'structure-image';
		with: [ 
			html image 	
				document: self file binaryContents
				mimeType: self file contentType
				fileName: self file title ]