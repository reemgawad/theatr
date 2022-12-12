import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="edit-ajax"
export default class extends Controller {
  static targets = ["responseInfo", "responseEdit"]

  connect() {
    console.log(this.responseEditTarget);
  }

  revealForm(event) {
    // console.log("TODO: hide info and show edit form");
    event.preventDefault();
    this.responseInfoTarget.classList.add("d-none");
    this.responseEditTarget.classList.remove("d-none");
  }
}
