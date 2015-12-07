package entities
class Groupe{

    String nom
    static hasMany = [images:Image,pois:POI]
    static constraints = {
        nom (nullable: false)
    }
}
