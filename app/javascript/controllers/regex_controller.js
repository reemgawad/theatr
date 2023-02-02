import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="regex"
export default class extends Controller {
  static targets = ["input", "button"]

  connect() {
    // console.log(this.element);
    // console.log(this.inputTarget);
  }

  validate(event) {
    const regex = /^.*((youtu.be\/)|(v\/)|(\/u\/\w\/)|(embed\/)|(watch\?))\??v?=?([^#\&\?]*).*/
    if (regex.test(this.inputTarget.value) == false) {
      this.buttonTarget.classList.add("disabled")
      this.inputTarget.classList.add("is-invalid", "border", "border-danger", "rounded")
      this.inputTarget.setAttribute("placeholder", "Please paste a valid Youtube link.")
    } else if (regex.test(this.inputTarget.value)) {
      this.buttonTarget.classList.remove("disabled")
      this.inputTarget.classList.add("is-valid")
      this.inputTarget.classList.remove("is-invalid","border", "border-danger", "rounded")
    }
  }
}
