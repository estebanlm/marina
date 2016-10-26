testing
isText
	^ (self contentType main = 'text')
		or: [ self contentType sub = 'javascript' ]