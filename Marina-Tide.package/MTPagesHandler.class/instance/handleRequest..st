request handling
handleRequest: aRequest
	| structure |
	structure := self pageForRequest: aRequest.
	(structure isNil 
		or: [ structure isEmpty
		or: [ structure published not ] ])
		ifTrue: [ ^ self pageNotFound: aRequest ].

	self respond: (ZnResponse ok: structure webContents)