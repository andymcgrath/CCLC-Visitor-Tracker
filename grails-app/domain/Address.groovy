class Address {

    static belongsTo = [individual: Individual]
    static searchable = true

    static constraints = {
        type(inList: ["Home", "Work", "Other"])
        addressLine1()
        addressLine2()
        city()
        state(inList: ["IA", "MN", "ND", "SD","WI"])
        zipcode()
    }

    String addressLine1
    String addressLine2
    String city
    String state = "MN"
    String zipcode
    String type

    String toString() {
        return addressLine1 + "\n" + city + ", " + state + " " + zipcode
    }
}
