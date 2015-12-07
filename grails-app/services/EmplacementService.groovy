

import grails.transaction.Transactional
import entities.Emplacement
@Transactional
class EmplacementService {
    String[] addE = ["Allée des cistes", "Chemin de la tour", "Avenue jean medecin","Rue de la taverne","Avenue des champs"]
    double[][] coords =[[12.0,8.88],[4.44,-9.5],[14,5.68],[12,5.68],[10,5.58]]
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
