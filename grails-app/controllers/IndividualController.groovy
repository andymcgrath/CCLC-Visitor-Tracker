class IndividualController {
    def searchableService
    def index = { redirect(action: list, params: params) }

    // the delete, save and update actions only accept POST requests
    def allowedMethods = [delete: 'POST', save: 'POST', update: 'POST']

    def list = {
        if (!params.max) params.max = 10
        [individualList: Individual.list(params)]
    }

    def show = {
        def individual = Individual.get(params.id)

        if (!individual) {
            flash.message = "Individual not found with id ${params.id}"
            redirect(action: list)
        }
        else { return [individual: individual] }
    }

    def delete = {
        def individual = Individual.get(params.id)
        if (individual) {
            individual.delete()
            flash.message = "Individual ${params.id} deleted"
            redirect(action: list)
        }
        else {
            flash.message = "Individual not found with id ${params.id}"
            redirect(action: list)
        }
    }

    def edit = {
        def individual = Individual.get(params.id)

        if (!individual) {
            flash.message = "Individual not found with id ${params.id}"
            redirect(action: list)
        }
        else {
            return [individual: individual]
        }
    }

    def update = {
        def individual = Individual.get(params.id)
        if (individual) {
            individual.properties = params
            if (!individual.hasErrors() && individual.save()) {
                flash.message = "Individual ${params.id} updated"
                redirect(action: show, id: individual.id)
            }
            else {
                render(view: 'edit', model: [individual: individual])
            }
        }
        else {
            flash.message = "Individual not found with id ${params.id}"
            redirect(action: edit, id: params.id)
        }
    }

    def create = {
        def individual = new Individual()
        individual.properties = params
        return ['individual': individual]

    }

    def save = {
        def individual = new Individual(params)
        if (!individual.hasErrors() && individual.save()) {
            
            flash.message = "Individual ${individual.id} created"
            render(view: 'edit', model: [individual: individual])
        }
        else {
            render(view: 'create', model: [individual: individual])
        }
    }

    def search = {
        def individualList
        if (params.query)
            individualList = Individual.search(params.query).results
        else
            individualList = Individual.list()
        render(view: 'list', model: [individualList: individualList])
    }


}
