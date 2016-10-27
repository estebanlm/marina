private
pageNotFound: aRequestContext
	aRequestContext respond: [ :response | response notFound ]