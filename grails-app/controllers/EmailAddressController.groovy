class EmailAddressController {

    def scaffold = EmailAddress

    def save = {
        def emailAddress = new EmailAddress(params)
        def individual = params.individual

        if(!emailAddress.hasErrors() && emailAddress.merge()) {
            flash.message = "Email Address ${emailAddress.id} created"
            redirect(controller:"individual",action:"edit", id:individual.id, params:[emailaddress:emailAddress])
        }
        else {
            render(view:'create',model:[emailAddress:emailAddress])
        }
    }
}
