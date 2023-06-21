import { Application } from "@hotwired/stimulus"
import Sidebar from "../sidebar";

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

console.log(sidebar_btn)
let sidebar = new Sidebar()
sidebar.elements(
    document.getElementById('sidebar_btn'),
    document.getElementById('sidebar')
)

export { application }

