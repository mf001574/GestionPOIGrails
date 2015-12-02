

import grails.transaction.Transactional

@Transactional
class EmplacementService {
    String[] addE = ["allée des cistes", "chemin de la tour", "avenue jean medecin"]
    double[][] coords =[[12.0,8.88],[4.44,-9.5],[14,5.68]]
    ArrayList<Emplacement> creerEmplacement(){
        ArrayList<Emplacement> emplacements = new ArrayList<Emplacement>()
        for (i in 0..2){
            Emplacement e = new Emplacement(latitude: coords[i][0],longitude:coords[i][1], adresse: addE[i])
            println("--------Création de l'emplacement : "+addE[i])
            e.save(flush:true,failOnError: true)
            emplacements.add(e)
        }
        return emplacements;
    }
}
