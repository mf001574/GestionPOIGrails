

import grails.transaction.Transactional
import entities.Image
import entities.POI
import entities.Groupe
import entities.Emplacement
@Transactional
class GroupePoiService {
    String[][] nomPOI = [["Tennis","Football","Rugby","Golf","Ping Pong"],["Physique","Chimie","Maths","Astronomie","Mécanique"],["Manga","Musique","Jeux-vidéo","Cinéma","Série TV"]]
    String[] nomGroupe = ["Sport","Science","Culture"]
    String[][] cheminImg = [["imgGroupe/sport.jpg"],["imgGroupe/science.png","imgGroupe/science2.jpg"],["imgGroupe/culture.jpg"]]
    ArrayList<POI> creerPoiGroupe(ArrayList<Emplacement> listeE, imgPOI){
        ArrayList<POI> listePOI = new ArrayList<POI>()
        for( i in 0..2 ) {
            println("--Création du groupe "+nomGroupe[i])
            Groupe groupe = new Groupe(nom: nomGroupe[i])
            String[] tImg = cheminImg[i]
            //parcours des img pour le groupe
            for(k in 0..tImg.length-1){
                Image img = new Image(src: cheminImg[i][k])
                println("----Ajout de l'image "+cheminImg[i][k])
                groupe.addToImages(img)
            }

            for(j in 0..4) {
                println("----Création du POI "+nomPOI[i][j])
                def poi
                if(nomPOI[i][j].equals("Football")){
                    Image img2 = new Image(src: "imgPOI/foot.jpg")
                    imgPOI.save(failOnError: true , flush: true)
                    poi = new POI(nom: nomPOI[i][j], description: "Poi pour les amoureux de football.", emplacement: listeE.get(j%listeE.size()))
                    poi.addToImages(img2)
                    poi.addToImages(imgPOI)
                }else{
                    poi = new POI(nom: nomPOI[i][j], description: "Pas de commentaire pour ce POI.", emplacement: listeE.get(j%listeE.size()))
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
