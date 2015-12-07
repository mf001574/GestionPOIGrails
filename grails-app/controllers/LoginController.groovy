
import grails.transaction.Transactional
import entities.*

@Transactional(readOnly = true)
class LoginController {
   // static allowedMethods = [authentifier: ["POST","GET"]]

    def index(){
        // va charger index.gsp dans le dossier login
    }

    def login(){
        //va charger login.gsp dans le dossier login
        if(session.utilisateur != null){
            redirect(uri:"/utilisateur/"+session.utilisateur.id)
        }
    }
    def connect(){
        println("Recherche de l'utilisateur avec les parametres --->"+params)
        Utilisateur u = Utilisateur.findWhere(email : params.get("email"),mdp: params.get("mdp").encodeAsMD5())
        if(u!=null){
            session.utilisateur = u;
            redirect(uri:"/utilisateur/"+u.id)
        }else{
            println("Echec d'authentification")
            flash.message = "Erreur d'authentification"
            redirect(action:"login")
        }
    }

    def disconnect(){
        session.invalidate();
        redirect(uri:"/")
    }
}
