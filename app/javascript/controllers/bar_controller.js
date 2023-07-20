import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    connect() {
        this.nav = document.getElementById('nav-bar')
        this.bodypd = document.getElementById('body-pd')
        this.headerpd = document.getElementById('header')
        this.toggle = document.getElementById('header-toggle')
    }

    click(){
        this.nav.classList.toggle('show_bar')
        this.change_icon()
        this.bodypd.classList.toggle('body-pd')
        this.headerpd.classList.toggle('body-pd')
    }

    change_icon(){
        if (this.toggle.classList.contains('fa-bars')){
            this.toggle.classList.remove('fa-bars')
            this.toggle.classList.add('fa-times')
        } else {
            this.toggle.classList.remove('fa-times')
            this.toggle.classList.add('fa-bars')
        }
    }
}