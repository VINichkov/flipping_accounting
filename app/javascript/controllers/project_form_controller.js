import {Controller} from "@hotwired/stimulus"

export default class extends Controller {
    static targets = [ 'formWindow']

    connect() {
        console.log('Зацепились')

    }

    formWindowTargetConnected(target){
        console.log('Поехали')
        this.md = Modal.getInstance(this.formWindowTarget)
        if (this.md === null) {
            this.md = new Modal(this.formWindowTarget)
        }
        this.md.show()
    }

    submit(){
        this.md.hide()
    }

}