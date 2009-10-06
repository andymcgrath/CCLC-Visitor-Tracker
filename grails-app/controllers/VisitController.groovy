class VisitController {

    def scaffold = Visit

    def save = {
        def visit = new Visit(params)
        def individual = params.individual

        if (!visit.hasErrors() && visit.merge()) {
            flash.message = "Visit ${visit.id} created"
            redirect(controller: "individual", action: "edit", id: individual.id, params: [visit: visit])
        }
        else {
            render(view: 'create', model: [visit: visit])
        }
    }
}
