initialization
initialize
	TDDispatcher default sessionManager sessionClass: self.
	MTLoginPresenter registerAt: 'marina'.
	(MTPagesHandler path: 'web') register.
	(MTResourcesUploadHandler path: 'upload') register