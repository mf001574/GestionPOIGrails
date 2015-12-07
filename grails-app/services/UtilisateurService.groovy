;

import grails.transaction.Transactional
import entities.Utilisateur
@Transactional
class UtilisateurService {
    String[] emails = ["martin@gmail.com","toto@ymail.com","moise@gmail.com","jauvat@gmail.com","massa@gmail.com"]
    String[] noms = ["Martin","Toto","Moise","Jauvat","Massa"]
    String[] prenoms = ["David","Yves","Yoann","Fabrice","Florian"]
    String [] mdp = ["1234","toto","titi","tétu","1234"]
    ArrayList<Utilisateur> creerUtilisateurs(){
        ArrayList<Utilisateur> listeU = new ArrayList<Utilisateur>()
        (0..4).each{
            def utilisateur = new Utilisateur(email: emails[it],nom: noms[it], prenom:prenoms[it],mdp: (mdp[it]).encodeAsMD5())
            listeU.add(utilisateur)
            utilisateur.save(flush: true, failOnError: true)
        }
        return listeU;
    }
}
