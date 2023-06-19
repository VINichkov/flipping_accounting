import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    connect() {
        const color = 'bg-warning'
        this.element.classList.add(color)
        this.timeout = setTimeout(
            () => this.element.classList.remove(color),
            1000
        )
    }
    disconnect(){
        clearTimeout(this.timeout)
    }
}