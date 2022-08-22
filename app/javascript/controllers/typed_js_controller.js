// app/javascript/controllers/typed_js_controller.js
import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ['Computing Power', 'Resolution', 'Operative System', 'Memory'],
      typeSpeed: 30,
      loop: true
    })
  }
}
