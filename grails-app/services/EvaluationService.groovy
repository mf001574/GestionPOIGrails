

import grails.transaction.Transactional
import entities.Utilisateur
import entities.POI
import entities.Evaluation
@Transactional
class EvaluationService {
    Random rand = new Random();
    int[] notes = [18,2,12,10,15,20]
    String[] commentaires = ["C'est super","Bof bof j'aime pas","C'est sympa mais sans plus","Vraiment moyen","J'adore","Vraiment génial"]
    void creerEvaluation(ArrayList<POI> listePOI, ArrayList<Utilisateur> listeU){
        listePOI.each { POI item ->
            int posComNote = Math.abs(rand.nextInt() % (commentaires.length) )
            int posU = Math.abs(rand.nextInt() % (listeU.size()))
            Utilisateur u = listeU.get(posU)
            def evaluation = new Evaluation(note : notes[posComNote], commentaire:commentaires[posComNote])
            item.addToEvaluation(evaluation)
            u.addToEvaluations(evaluation)
            evaluation.save(flush:true, failOnError: true)
        }
    }
}
