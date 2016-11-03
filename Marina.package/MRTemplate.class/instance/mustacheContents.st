exporting
mustacheContents
	^ (self contents ifNil: [ '' ]) asMustacheTemplate 