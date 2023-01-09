import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="edit-ajax"
export default class extends Controller {

  static targets = ["responseInfo", "responseEdit", "form", "question"]
  static values = {
    activityId: Number,
    userId: Number
  }

  connect() {
  }

  revealForm(event) {
    // hide info and show edit form
    event.preventDefault();
    this.responseInfoTarget.classList.add("d-none");
    this.responseEditTarget.classList.remove("d-none");
  }

  preventRefresh(event) {
    event.preventDefault();

    let answer = (this.formTarget.querySelector('input[name="user_response[text]"]:checked').value);

    fetch(this.formTarget.action, {
      method: 'POST',
      headers: {
        "Content-Type": "application/json"
      },
      body: JSON.stringify({"text": answer, "activity_question_id": this.activityIdValue})
    }).then(response => response.json())
      .then((data) => {
        console.log(data)
      })

    this.formTarget.classList.add("d-none")

    this.questionTarget.innerHTML +=
    `
      <p>${answer}</p>
      <input type="button" value="Edit" class="btn btn-primary editButton">
    `
  }

}
