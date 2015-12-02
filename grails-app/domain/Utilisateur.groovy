
class Utilisateur {
    String email
    String nom
    String prenom
    String mdp


    static hasMany = [evaluations:Evaluation]

    static constraints = {
        email(nullable: false)
        nom(nullable: false)
        mdp(nullable: false)
        prenom(nullable: false)
    }
}
