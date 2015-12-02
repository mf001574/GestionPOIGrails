import grails.transaction.Transactional


@Transactional(readOnly = true)
class LoginController {
   // static allowedMethods = [authentifier: ["POST","GET"]]

    def index(){
        // va charger index.gsp dans le dossier login
    }

    def login(){
        //va charger login.gsp dans le dossier login
    }
    def connect(){
        println("Recherche de l'utilisateur avec les parametres --->"+params)
        Utilisateur u = Utilisateur.findWhere(email : params.get("email"),mdp: params.get("mdp").encodeAsMD5())
        if(u!=null){
            session.utilisateur = u;
            session.msgErrLogin=""
            redirect(uri:"/utilisateur/"+u.id)
        }else{
            println("Echec d'authentification")
            flash.message = "Erreur d'authentification"
            redirect(action:"login")
        }
    }
}
