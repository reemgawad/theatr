import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="edit-ajax"
export default class extends Controller {
  static targets = ["responseInfo", "responseEdit", "form", "content"]
  static values = {
    activityId: Number,
    userId: Number
  }

  connect() {
    console.log(this.formTargetsAll)
  }

  revealForm(event) {
    // hide info and show edit form
    event.preventDefault();
    this.responseInfoTarget.classList.add("d-none");
    this.responseEditTarget.classList.remove("d-none");
  }

  preventRefresh(event) {
    event.preventDefault();
    let url = "/user_responses"
    let answer = (this.formTarget.querySelector('input[name="user_response[text]"]:checked').value);

    console.log(answer)

    console.log(this.userIdValue)

    fetch(this.formTarget.action, {
      method: 'POST',
      headers: {"Content-Type": "application/json"},
      body: JSON.stringify({"text": answer, "activity_question_id": this.activityIdValue, "user_id": this.userIdValue, "correct": false,})
    })
  }
}
