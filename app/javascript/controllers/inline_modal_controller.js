import { Controller } from "stimulus";

export default class extends Controller {
  static targets = [ 'form' ];

  connect() {
    // this.formTarget
    this.formTarget.style.height = "0";
    this.formTarget.style.overflow = "hidden";
    this.formTarget.style.transition = "height 0.35s ease-out";
  }

  openModal(event) {
    this.formTarget.style.height = "150px";
    event.currentTarget.remove()
  }

  submitOnEnter(event) {
    if (event.key === 'Enter' && !event.shiftKey) {
      event.preventDefault()
      this.formTarget.submit()
    }
  }
}