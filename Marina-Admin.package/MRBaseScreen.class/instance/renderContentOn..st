rendering
renderContentOn: html
	html div
		class: #'screen-content';
		with: [ 
			html heading level5
				class: #'section-title';
				with: [ 
					self path 
						do: [ :each | 
							each == self 
								ifTrue: [  html span: each title ]
								ifFalse: [ self renderNavigationLinkTo: each on: html ] ]
						separatedBy: [ html space; text: '/'; space ].
					self renderActionsOn: html ].
			html paragraph: self description.
			self renderScreenContentOn: html ]