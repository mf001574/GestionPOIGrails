import projet.GenerateurUtilisateurService

class BootStrap {

    ArrayList<POI> listePOI = new ArrayList<POI>()
    ArrayList<Utilisateur> listeU = new ArrayList<Utilisateur>()
    ArrayList<Emplacement> listeE = new ArrayList<Emplacement>()
    UtilisateurService utilisateurService
    EmplacementService emplacementService
    GroupePoiService groupePoiService
    EvaluationService evaluationService
    def init = {
        try{
            println("----------init-----------");
            println("-----------Génération des images par défaut-----------")
            def imgPOI = new Image(src: "imgPOI/imgPoiDefaut.jpg")
            imgPOI.save(failOnError: true , flush: true)
            println("---------Génération des emplacements---------")
            listeE = emplacementService.creerEmplacement()
            println("----------Creation des POI groupés---------")
            listePOI = groupePoiService.creerPoiGroupe(listeE,imgPOI)
            println("----------Creation des utilisateurs---------")
            listeU = utilisateurService.creerUtilisateurs()
            println("-------Creation des evaluations-------")
            evaluationService.creerEvaluation(listePOI,listeU)
        }catch (e){
            println("Erreur -> "+e)
        }
    }
    def destroy = {
    }
}
