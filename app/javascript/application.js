// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"
import "@hotwired/stimulus"

const elements = document.querySelectorAll('.character-icons');
elements.forEach((e) => (
  e.addEventListener("click", (event) => {
    console.log("active");
    e.querySelector("#icon-audio").play();
  })
));
