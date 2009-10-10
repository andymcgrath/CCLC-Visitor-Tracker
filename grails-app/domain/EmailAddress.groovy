class EmailAddress {

    static belongsTo = [individual: Individual]
    static searchable = true
    
    static constraints = {
        type(inList: ["Home", "Work", "Other"])
        emailAddress()
    }

    String emailAddress
    String type

    String toString() {
        return emailAddress
    }
}
