private factory
createReportComponent
	^ (MDLMAReport 
		rows: self rows
		description: self reportDescription)
		addColumnFirst: (MRIconColumn new 
			tableDataClass: 'structure_type';
			addIconOn: self selector: #iconFor:;
			yourself);
		addColumn: (MRCommandColumn new
			addCommandOn: self selector: #editStructure: iconSelector: #editIconFor:;
			addCommand: (MRColumnCommandIcon new 
				target: self; 
				selector: #removeStructure:; 
				icon: 'clear';
				decorateDOMElementWith: [ :domElement :anObject | 
					domElement onClick: ('return confirm("', ((self removeTextFor: anObject) copyReplaceAll: '"' with: '\"'), '");') ];
				yourself);
			yourself);
		batchSize: 25;
		batchSizePossibilities: #(25 50);
		yourself
