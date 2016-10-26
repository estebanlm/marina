*Marina-Seaside-MDL
addColumnFirst: aColumn
	columns := columns copyWithFirst: aColumn.
	^ aColumn setReport: self; yourself