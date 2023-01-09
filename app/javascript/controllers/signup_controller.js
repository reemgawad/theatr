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
    } else if (event.target.value == 'true') {
      this.codeTextTarget.innerHTML = "This was the code given to you by Tableau D'Hote. <br> With this code, a classroom will be created for your students where you will be assigned as their teacher."
    }
  }
}
