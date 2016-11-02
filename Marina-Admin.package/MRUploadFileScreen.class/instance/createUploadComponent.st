private factory
createUploadComponent
	^ (MRUploadFileDefinition new asComponent
		addDecoration: MDLMAValidationDecoration new;
		addDecoration: (MDLMAFormDecoration 
			buttons: { 
				#cancel -> 'Cancel'.
				#save -> 'Upload'
			});
		onAnswer: [ :v | self answer: v ];
		yourself)