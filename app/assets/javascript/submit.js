var allSubmitButtons = document.querySelectorAll("#quiz-submit");
// console.log(allSubmitButtons);

var submitAll = document.querySelector('#submit-all')
// console.log(submitAll);

submitAll.addEventListener('click', (event) => {
  allSubmitButtons.forEach((e) => {
    // console.log(e);
    // HTMLFormElement.prototype.submit.call(e);
    e.click();
    // console.log("Hello");
  })
})
