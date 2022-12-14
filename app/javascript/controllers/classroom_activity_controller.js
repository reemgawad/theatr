import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["form"]
  static values = {
    activityId: Number
  }

  connect() {

  }

  changeButton(event) {
    event.preventDefault();

    if (this.formTarget.querySelector("input").classList.contains('btn-primary')) {
      fetch(this.formTarget.action)
      this.formTarget.action = `/activities/${this.activityIdValue}/remove_activity`
      this.formTarget.querySelector("input").classList = "btn btn-danger"
      this.formTarget.querySelector("input").value = "Remove Activity"
    } else {
      fetch(this.formTarget.action)
      this.formTarget.action = `/activities/${this.activityIdValue}/add_activity`
      this.formTarget.querySelector("input").classList = "btn btn-primary"
      this.formTarget.querySelector("input").value = "Add Activity"
    }
  }
}
