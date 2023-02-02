var allSubmitButtons = document.querySelectorAll("#quiz-submit");
// console.log(allSubmitButtons);

var submitAll = document.querySelector('#submit-all')
// console.log(submitAll);

submitAll.addEventListener('click', (event) => {
  // event.preventDefault()

  allSubmitButtons.forEach((e) => {
    // console.log(e);
    e.click();
  })

  // fetch(submitAll.parentElement.action)

  // window.location.reload()


})
