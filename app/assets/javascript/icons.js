var elements = document.querySelectorAll('#icon-symbol');
elements.forEach((e) => (
  e.addEventListener("click", (event) => {
    console.log("active");
    e.querySelector("#icon-audio").play();
  })
));
