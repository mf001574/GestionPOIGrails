

import grails.transaction.Transactional

@Transactional
class GroupePoiService {
    String[][] nomPOI = [["Tennis","Football","Rugby","Golf","Ping Pong"],["Physique","Chimie","Maths","Astronomie","Mécanique"],["Manga","TV","Poker","Cinéma","Informatique"]]
    String[] nomGroupe = ["Sport","Science","Loisir"]
    ArrayList<POI> creerPoiGroupe(ArrayList<Emplacement> listeE, imgPOI){
        ArrayList<POI> listePOI = new ArrayList<POI>()
        for( i in 0..2 ) {
            println("--Création du groupe "+nomGroupe[i])
            def groupe = new Groupe(nom: nomGroupe[i])
            for(j in 0..4) {
                println("----Création du POI "+nomPOI[i][j])
                def poi
                if(nomPOI[i][j].equals("Football")){
                    Image img2 = new Image(src: "imgPOI/foot.jpg")
                    imgPOI.save(failOnError: true , flush: true)
                    poi = new POI(nom: nomPOI[i][j], description: "Poi pour les amoureux de football", emplacement: listeE.get(j%listeE.size()))
                    poi.addToImages(img2)
                    poi.addToImages(imgPOI)
                }else{
                    poi = new POI(nom: nomPOI[i][j], description: "...", emplacement: listeE.get(j%listeE.size()))
                    poi.addToImages(imgPOI)
                }
                poi.save(flush: true, failOnError: true)
                groupe.addToPois(poi)
                listePOI.add(poi)
            }
            groupe.save(flush: true, failOnError: true)
        }
        return listePOI
    }
}
