class Individual {
    
    static hasMany = [addresses:Address, telephones:Telephone, emailAddresses:EmailAddress, visits:Visit]
    static searchable = {
        addresses(component: true)
        telephones(component: true)
        emailAddresses(component: true)
        visits(component: true)
    }

    static constraints = {
        firstName()
        lastName()
        addresses(nullable:true)
        telephones(nullable:true)
        emailAddresses(nullable:true)
        visits(nullable:true)
        discoverySource(nullable:true)
        notes(nullable:true, maxSize:2000)
    }

    String firstName
    String lastName
    String discoverySource
    Boolean membership
    String notes

    String toString() {
        return firstName + " " + lastName
    }
}
