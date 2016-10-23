running
setUp
	super setUp.
	oldRepository := VORepository current.
	VORepository setRepository: VOMemoryRepository new.
	[MRSetup new root] valueSupplyingAnswer: 'test@42.net'.
	object := self newInstance.
