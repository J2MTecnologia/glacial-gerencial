class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/auth")
        "/auth"(view:"/auth")
        "500"(view:'/error')
	}
}
