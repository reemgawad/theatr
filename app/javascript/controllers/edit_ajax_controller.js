import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="edit-ajax"
export default class extends Controller {
  static targets = ["responseInfo", "responseEdit", "commentInfo", "commentEdit"]

  connect() {
  }

  revealForm(event) {
    // hide info and show edit form
    event.preventDefault();
    this.responseInfoTarget.classList.add("d-none");
    this.responseEditTarget.classList.remove("d-none");
  }

  revealCommentForm(event) {
    event.preventDefault();
    this.commentInfoTarget.classList.add("d-none");
    this.commentEditTarget.classList.remove("d-none");
  }
}
