var allSubmitButtons = document.querySelectorAll("#quiz-submit");
// console.log(allSubmitButtons);

var submitAll = document.querySelector('#submit-all')
// console.log(submitAll);

var delay = ms => new Promise(res => setTimeout(res, ms));

var multiSubmit = async (event) => {

  allSubmitButtons.forEach((e) => {
    // console.log(e);
    e.click();
  })

  await delay(300);
  // console.log(submitAll.parentElement.action)
  fetch(submitAll.parentElement.action)
  await delay(100);
  window.location.reload()
}

submitAll.addEventListener('click', (event) => {
  event.preventDefault()

  multiSubmit();

})
