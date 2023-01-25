import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="signup"
export default class extends Controller {
  static targets = ["codeText"]

  connect() {
  }

  displayText(event) {
    // console.log(event.target.value);
    if (event.target.value == 'false') {
      this.codeTextTarget.innerHTML = "This is the code given to you by your teacher. <br> With this code, you will be added to your virtual classroom with your teacher and your peers."
      this.codeTextTarget.setAttribute("id","student-code")
    } else if (event.target.value == 'true') {
      this.codeTextTarget.innerHTML = "This is the code given to you by Tableau D'Hote. <br> With this code, a classroom will be created for your students where you will be assigned as their teacher."
      this.codeTextTarget.setAttribute("id","teacher-code")
    }
  }

  displayError(event) {
    // console.log(event.target.value);
    if (event.target.value == '') {
      event.target.classList.add("is-invalid", "border", "border-danger", "rounded")
      event.target.setAttribute("placeholder", "Cannot be blank.")
    }
    else if (event.target.value != '') {
      event.target.classList.add("is-valid")
      event.target.classList.remove("is-invalid","border", "border-danger", "rounded")
    }
  }

  displayCodeError(event) {
    // Check if Teacher
    // If access code is not 'placeholderTC' show error
    // console.log(this.codeTextTarget);
    if (this.codeTextTarget.id == 'teacher-code') {
      if (event.target.value != 'placeholderTC') {
        event.target.classList.add("is-invalid", "border", "border-danger", "rounded")
      }
      else if (event.target.value == 'placeholderTC') {
        event.target.classList.add("is-valid")
        event.target.classList.remove("is-invalid","border", "border-danger", "rounded")
      }
    }
  }
}
