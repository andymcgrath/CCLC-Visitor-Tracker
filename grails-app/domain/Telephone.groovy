class Telephone {

    static belongsTo = [individual: Individual]
    static searchable = true

    static constraints = {
        type(inList: ["Home", "Work", "Other"])
        telephoneNumber()
    }

    String telephoneNumber
    String type

    String toString() {
        return telephoneNumber
    }
}
