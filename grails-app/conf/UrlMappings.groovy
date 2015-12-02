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

        //Les mapping pour la page des utilisateurs
        "/utilisateur/" (controller: "utilisateur", action: "index")
        "/utilisateur/$id" (controller: "utilisateur", action: "afficher")
        "/utilisateur/modifierInfo" (controller: "utilisateur", action: "modifierInfo")
        "/utilisateur/modifierMDP" (controller: "utilisateur", action:"modifierMDP")
        "500"(view:'/error')
	}
}
