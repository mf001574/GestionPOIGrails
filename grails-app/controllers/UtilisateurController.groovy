import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = false)
class UtilisateurController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Utilisateur.list(params), model: [utilisateurInstanceCount: Utilisateur.count()]
    }
    def show(Utilisateur utilisateurInstance) {
        respond utilisateurInstance
    }

    def create() {
        respond new Utilisateur(params)
    }

    @Transactional
    def save(Utilisateur utilisateurInstance) {
        if (utilisateurInstance == null) {
            notFound()
            return
        }

        if (utilisateurInstance.hasErrors()) {
            respond utilisateurInstance.errors, view: 'create'
            return
        }

        utilisateurInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'utilisateur.label', default: 'Utilisateur'), utilisateurInstance.id])
                redirect utilisateurInstance
            }
            '*' { respond utilisateurInstance, [status: CREATED] }
        }
    }

    def edit(Utilisateur utilisateurInstance) {
        respond utilisateurInstance
    }

    @Transactional
    def update(Utilisateur utilisateurInstance) {
        if (utilisateurInstance == null) {
            notFound()
            return
        }

        if (utilisateurInstance.hasErrors()) {
            respond utilisateurInstance.errors, view: 'edit'
            return
        }

        utilisateurInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Utilisateur.label', default: 'Utilisateur'), utilisateurInstance.id])
                redirect utilisateurInstance
            }
            '*' { respond utilisateurInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Utilisateur utilisateurInstance) {

        if (utilisateurInstance == null) {
            notFound()
            return
        }

        utilisateurInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Utilisateur.label', default: 'Utilisateur'), utilisateurInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'utilisateur.label', default: 'Utilisateur'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }

    //FRONT-END
    def afficher(){
        //si l'utilisateur courant et celui de la session
        boolean utilisateurSession = false
        Long vId = Long.valueOf(params.get("id"))
        Utilisateur u = Utilisateur.findWhere(id:vId)
        if(u!= null){
            // si utilisateur de la session
            if(u.id.equals(session.utilisateur.id)){
                utilisateurSession = true
            }
            render(view:"afficher", model:["nom":u.nom,"prenom":u.prenom,"email":u.email, "utilisateurSession":utilisateurSession])
        }else{
            render "mauvais utilisateur"
        }

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
