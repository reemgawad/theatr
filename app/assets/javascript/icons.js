var elements = document.querySelectorAll('.character-icons');
elements.forEach((e) => (
  e.addEventListener("click", (event) => {
    console.log("active");
    e.querySelector("#icon-audio").play();
  })
));
