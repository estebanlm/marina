Smalltalk createPackage: 'Marina-Widgets-Login'!
MRFrameWidget subclass: #MRAbstractLoginWidget
	instanceVariableNames: 'errorDiv onLoginBlock presenter'
	package: 'Marina-Widgets-Login'!

!MRAbstractLoginWidget methodsFor: 'accessing'!

onLoginBlock
	^ onLoginBlock ifNil: [ [] ]
!

onLoginBlock: aBlock
	onLoginBlock := aBlock
!

presenter
	^ presenter
!

presenter: aPresenter
	presenter := aPresenter
! !

!MRAbstractLoginWidget methodsFor: 'actions'!

onLogin: anUser
	anUser ifNotNil: [
		self remove.
		self onLoginBlock value ]
! !

!MRAbstractLoginWidget methodsFor: 'error handling'!

onLoginError: anError
	errorDiv asJQuery empty.
	[ :html | 
		html p 
			class: 'bg-danger';
			with: anError messageText ] appendToJQuery: errorDiv asJQuery
! !

!MRAbstractLoginWidget methodsFor: 'rendering'!

renderContentOn: html
	html div 
		class: 'container-fluid';
		with: [
			html div 
				class: 'row';
				with: [ 
					html div 
						class: 'col-xs-12 col-md-4 col-md-offset-4';
						with: [ 
							html div 
								class: 'login'; 
								with: [
									self renderHeaderOn: html.
									self renderErrorOn: html.
									self renderFormOn: html ] ] ] ]
!

renderErrorOn: html
	errorDiv := html div class: 'login-errors'.
!

renderFormOn: html
	self subclassResponsibility
!

renderHeaderOn: html
	html h1 with: [
		html span 
			class: 'logo';
			with: [
				html span class: 'glyphicon glyphicon-tint'.
				html with: ' Marina' ] ]
! !

MRAbstractLoginWidget subclass: #MRMozillaPersonaLoginWidget
	instanceVariableNames: ''
	package: 'Marina-Widgets-Login'!

!MRMozillaPersonaLoginWidget methodsFor: 'actions'!

login: assertion
	[ self presenter
		validateMozillaPersonaAssertion: assertion;
		then: [ self onLogin: self presenter user ]
	] onPromiseFailureDo: [ :failure | 
		self onLoginError: failure ]
!

loginWithPersona
	navigator id request
!

logout
! !

!MRMozillaPersonaLoginWidget methodsFor: 'rendering'!

renderFormOn: html
	self setupPersona.
	html form with: [
		html div 
			class: 'form-group';
			with: [
				html button
					class: 'btn btn-default persona_login';
					type: 'submit';
					onClick: [ :e | 
						e preventDefault.
						self loginWithPersona ] ] ]
! !

!MRMozillaPersonaLoginWidget methodsFor: 'setup'!

setupPersona
	navigator id logout.
	navigator id watch: #{
		'loggedInUser' -> false.
		'onlogin' -> [ :assertion | self login: assertion ].
		'onlogout' -> [ self logout ]
	}
! !

