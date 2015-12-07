package entities
class Emplacement {
    String adresse
    double latitude
    double longitude
    static constraints = {
        adresse(nullable:false)
    }
}
