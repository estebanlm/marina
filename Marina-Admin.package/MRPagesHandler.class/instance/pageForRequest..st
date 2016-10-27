private
pageForRequest: aRequestContext
	| segments root |
	
	(root := self root) ifNil: [  ^nil ]. 
	segments := aRequestContext consumer upToEnd.
	segments ifEmpty: [ ^ root ].
	segments last = #/ ifTrue: [ segments := segments allButLast ].
	^ segments asMRPath findFrom: root