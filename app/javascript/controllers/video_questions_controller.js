import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["video", "form"]

  connect () {
    console.log(this.videoTarget)
    console.log(this.formTarget)

    this.videoTarget.addEventListener("ended", (event) => {
      console.log("hello")
      this.formTarget.classList.remove("d-none")
    })

  }
}
