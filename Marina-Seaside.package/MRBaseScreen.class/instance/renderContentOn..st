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
							html anchor 
								callback: [ self basicShowScreen: each ];
								with: each title ]
						separatedBy: [ html space; text: '/'; space ] ].
			html paragraph: self description.
			self renderScreenContentOn: html ]