package entities
class POI {

    String nom
    String description
    Emplacement emplacement

    static hasMany = [images:Image,evaluation:Evaluation]
    static constraints = {
        nom(nullable: false)
    }
}
