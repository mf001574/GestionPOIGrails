
class Evaluation {

    int note
    String commentaire
    static belongsTo = [utilisateur:Utilisateur,poi:POI]
    static constraints = {
        commentaire(nullable: false)
    }
}
