creation
createDefaultTemplate
	defaultTemplate := MRTemplate new.
	defaultTemplate title: 'default'.
	defaultTemplate contents: '<html><body>{{{contents}}}</body></html>'.
	defaultTemplate save.
	^ defaultTemplate