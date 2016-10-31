*Marina-Admin
descriptionPublicationDate
	<magritteDescription>
	<report>

	^ MADateAndTimeDescription new
		priority: 1; "I want it first"
		label: 'Publication Date';
		accessor: #publicationDate;
		componentClass: MDLMRDateAndTimeInputComponent;
		display: [ :aDateAndTime | MRDateAndTimeFormatter default format: aDateAndTime ];
		default: DateAndTime now;
		addPatternCondition: '(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d (0[0-9]|1[0-9]|2[0-3])(:[0-5][0-9])' 
			labelled: 'Input is required, Formaf is "dd/mm/yyyy hh:MM"'; 
		yourself