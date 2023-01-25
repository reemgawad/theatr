import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="character-counter"
export default class extends Controller {
  static targets = ["counter"]
  static values = { limit: Number }

  connect() {
  }

  wordCount(event) {
    var text = event.currentTarget.value;
    var count = 0;
    var split = text.split(' ');
    for (var i = 0; i < split.length; i++) {
     if (split[i] != "") {
      count ++;
     }
    }
    this.counterTarget.innerHTML = count == 1 ? `${count} word` : `${count} words`
  }

  // Character counter function (left here incase)
  // updateCounter(event) {
  //   const numberOfCharacters = event.currentTarget.value.length;
  //   if (numberOfCharacters > this.limitValue) {
  //     this.counterTarget.innerHTML = `Number of characters exceeded by ${numberOfCharacters - this.limitValue}.`;
  //   } else if (numberOfCharacters > 0) {
  //     this.counterTarget.innerHTML = `${this.limitValue - numberOfCharacters} characters left.`;
  //   } else {
  //     this.counterTarget.innerHTML = "";
  //   }
  // }
}
