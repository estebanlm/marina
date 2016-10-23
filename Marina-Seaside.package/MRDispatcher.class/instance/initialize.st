initialization
initialize
	super initialize.
	self register: MRPagesHandler new at: 'web'.
	self register: MRResourcesUploadHandler new at: 'upload'