class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }


        "/backEnd"(view:"/accueilBackEnd")
        "/"(controller: "login", action: "login")

        //mapping sur les groupes
        "/groupe" (controller: "groupe",action: "index")
        "/groupe/lister" (controller: "groupe",action: "lister")
        "/groupe/$id/editer" (controller: "groupe",action: "editer")
        "/groupe/$id/editer/modifier" (controller: "groupe",action: "modifier")
        "/groupe/$id/editer/supprimerPOI" (controller: "groupe",action: "supprimerPOI")
        "/groupe/$id/editer/ajouterPOI" (controller: "groupe",action: "ajouterPOI")
        "/groupe/$id" (controller: "groupe",action: "afficher")
        "/groupe/creer" (controller: "groupe",action: "creer")
        "/groupe/creerGroupe" (controller: "groupe",action: "creerGroupe")
        //Les mapping pour la page des utilisateurs au niveau back-end
        "/utilisateur/" (controller: "utilisateur", action: "index")
        //utilisateurs front-end
        "/utilisateur/$id" (controller: "utilisateur", action: "afficher")
        "/utilisateur/modifierInfo" (controller: "utilisateur", action: "modifierInfo")
        "/utilisateur/modifierMDP" (controller: "utilisateur", action:"modifierMDP")
        "/utilisateur/lister" (controller: "utilisateur", action:"lister")
        //Mapping poi
        "/POI"(controller: "POI", action: "index")
        "/POI/$id" (controller: "POI", action: "afficher")
        "/POI/creer" (controller: "POI", action: "creer")
        "/POI/$id/commenter" (controller: "POI", action: "commenter")
        "/POI/lister" (controller: "POI", action: "lister")
        "/POI/$id/editer" (controller: "POI", action: "editer")
        "/POI/$id/editer/modifierInfo" (controller: "POI", action: "modifierInfo")
        "/POI/$id/editer/modifierEmplacement" (controller: "POI", action: "modifierEmplacement")
        "/POI/creerPOI" (controller: "POI", action: "creerPoi")
        "500"(view:'/error')
	}
}
