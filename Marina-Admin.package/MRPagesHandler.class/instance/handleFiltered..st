handling
handleFiltered: aRequestContext
	| structure entity |

	structure := self pageForRequest: aRequestContext.
	structure ifNil: [ ^ self pageNotFound: aRequestContext ].
	structure published ifFalse: [ ^ self pageNotFound: aRequestContext ].
	(entity := structure webContents) ifNil: [ ^ self pageNotFound: aRequestContext ].
	aRequestContext respond: [ :response | 
		response contentType: entity contentType.
		entity contentType isBinary ifTrue: [ response binary ].
		response nextPutAll: entity contents ]