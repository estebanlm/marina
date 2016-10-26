private factory
createReportComponent
	^ (MDLMAReport 
		rows: self structure children
		description: MRStructure reportDescription)
		addColumnFirst: (MDLMAIconColumn new 
			tableDataClass: 'structure_type';
			addIconOn: self selector: #iconFor:;
			yourself);
		addColumn: (MDLMAIconCommandColumn new
			addCommandOn: self selector: #editStructure: iconSelector: #editIconFor:;
			addCommandOn: self selector: #removeStructure: icon: 'clear';
			yourself);
		batchSize: 25;
		batchSizePossibilities: #(25 50);
		yourself
