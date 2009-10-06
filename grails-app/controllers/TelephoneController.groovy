class TelephoneController {

    def scaffold = Telephone

    def save = {
        def telephone = new Telephone(params)
        def individual = params.individual

        if(!telephone.hasErrors() && telephone.merge()) {
            flash.message = "Telephone ${telephone.id} created"
            redirect(action:show,id:telephone.id)
            redirect(controller:"individual",action:"edit", id:individual.id, params:[telephone:telephone])
        }
        else {
            render(view:'create',model:[telephone:telephone])
        }
    }
}
