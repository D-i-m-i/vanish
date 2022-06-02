import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Rent a van, poop in a bucket !"],
      typeSpeed: 80,
      loop: true
    });
  }
}
