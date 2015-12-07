package frontEnd

import entities.Evaluation
import entities.Utilisateur
import grails.transaction.Transactional

@Transactional(readOnly = false)
class UtilisateurController {


    def afficher(){
        if(session.utilisateur == null){
            println("redirection")
            return redirect(controller: "login", action: "login")
        }
        //si l'utilisateur courant et celui de la session
        boolean utilisateurSession = false
        Long vId = Long.valueOf(params.get("id"))
        Utilisateur u = Utilisateur.findWhere(id:vId)
        ArrayList<Evaluation> evals = Evaluation.findAllByUtilisateur(u)
        if(u!= null){
            // si utilisateur de la session
            if(u.id.equals(session.utilisateur.id)){
                utilisateurSession = true
            }
            render(view:"/frontEnd/utilisateur/afficher", model:["nom":u.nom,"prenom":u.prenom,"email":u.email, "utilisateurSession":utilisateurSession, "evaluations":evals])
        }else{
            render "mauvais utilisateur"
        }

    }

    def lister(){
        ArrayList<Utilisateur> utilisateurs = Utilisateur.findAll()
        render(view: "/frontEnd/utilisateur/lister", model:["utilisateurs" : utilisateurs])
    }

    def modifierInfo(){
        println("Modification des informations ->"+params)
        Utilisateur u = Utilisateur.findWhere(id:session.utilisateur.id)
        u.nom = params.get("nom")
        u.prenom = params.get("prenom")
        u.save()
        session.utilisateur = u
        flash.messageModifInfo = "Informations modifiées avec succès."
        redirect(uri:"/utilisateur/"+session.utilisateur.id)
    }
    def modifierMDP(){
        println("Modification des informations ->"+params)
        Utilisateur u = Utilisateur.findWhere(id:session.utilisateur.id)
        u.mdp = params.get("mdp").encodeAsMD5()
        u.save()
        session.utilisateur = u
        flash.messageModifMDP = "Le mot de passe '"+params.get("mdp")+"' modifié avec succès."
        redirect(uri:"/utilisateur/"+session.utilisateur.id)
    }
}
