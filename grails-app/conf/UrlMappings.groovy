class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/index2")
        "/index"(view:"/index")
        "/backEnd"(view:"/accueilBackEnd")
        "/login"(controller: "login", action: "login")
        "/utilisateur/$id" (controller: "utilisateur", action: "afficher")
        "500"(view:'/error')
	}
}
