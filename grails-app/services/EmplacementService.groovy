

import grails.transaction.Transactional
import entities.Emplacement
@Transactional
class EmplacementService {
    String[] addE = ["Rue de France","Avenue Jean médecin","Avenue de la californie","Avenue des fleurs","Boulevard Gorbella",
                     "Avenue Cagnes sur mer","Rue Jean Allègre","Avenue de Cimiez"]
    double[][] coords =[[43.69244580000001,7.247582800000032],[43.702144,7.267124800000033],[43.6840985,7.234179100000006],[43.697807,7.253604999999993],[43.7212338,7.2563575000000355],
                        [43.663739,7.148820000000001],[43.70777090000001,7.281602000000021],[43.7194824,7.273373399999969]]
    ArrayList<Emplacement> creerEmplacement(){
        ArrayList<Emplacement> emplacements = new ArrayList<Emplacement>()
        for (i in 0..addE.length-1){
            Emplacement e = new Emplacement(latitude: coords[i][0],longitude:coords[i][1], adresse: addE[i])
            println("--------Création de l'emplacement : "+addE[i]+ " latitude:"+coords[i][0] + "longitude :"+coords[i][1])
            e.save(flush:true,failOnError: true)
            emplacements.add(e)
        }
        return emplacements;
    }
}
