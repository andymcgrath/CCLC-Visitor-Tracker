class Visit {

    static belongsTo = [individual: Individual]
    static searchable = {
        root false
    }

    static constraints = {
        visitationDate()
        service(inList: ["Early", "Late"])
        crossbeam()
        cookies()
        letter()
    }

    Date visitationDate
    String service
    Boolean crossbeam
    Boolean cookies
    Boolean letter

//    String toString() {
//        return visitationDate.toString() + " " + service
//    }
}
