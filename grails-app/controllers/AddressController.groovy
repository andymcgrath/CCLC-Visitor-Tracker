class AddressController {
    def searchableService
    def scaffold = Address

    def save = {
        def address = new Address(params)
        def individual = params.individual

        if(!address.hasErrors() && address.merge()) {
            searchableService.index()

            flash.message = "Address created"
//            redirect(action:show,id:address.id)
            redirect(controller:"individual",action:"edit", id:individual.id, params:[address:address])
        }
        else {
            render(view:'create',model:[address:address])
        }
    }
}
