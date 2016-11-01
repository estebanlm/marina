rendering
renderActionUploadOn: html
	html mdlAnchor 
		id: 'upload_file';
		class: 'action_button';
		fab;
		colored;
		rippleEffect;
		callback: [ ];
		with: [ html mdlIcon: 'file_upload' ].
	html mdlTooltip for: 'upload_file'; with: 'Upload a file'