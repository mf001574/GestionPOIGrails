

import grails.transaction.Transactional
import entities.Emplacement
@Transactional
class EmplacementService {
    String[] addE = ["Allée des fleurs", "Chemin de la tour", "Avenue jean medecin","Rue de la taverne","Avenue des champs"]
    double[][] coords =[[43.7055849,7.2848589],[43.7038143,7.2805772],[43.688477,7.2690182],[43.6889389,7.28656380],[43.672499,7.2805772]]
    ArrayList<Emplacement> creerEmplacement(){
        ArrayList<Emplacement> emplacements = new ArrayList<Emplacement>()
        for (i in 0..addE.length-1){
            Emplacement e = new Emplacement(latitude: coords[i][0],longitude:coords[i][1], adresse: addE[i])
            println("--------Création de l'emplacement : "+addE[i])
            e.save(flush:true,failOnError: true)
            emplacements.add(e)
        }
        return emplacements;
    }
}
