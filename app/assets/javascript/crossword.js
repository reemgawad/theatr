var grid = [[0,0,0,0,0,0,'1',0,'2',0,0,0,0,0,0,0],
['3','3','3','3','3','3','3,1','3','3,2','3',0,0,0,0,0,0],
[0,0,0,0,0,0,'1',0,0,0,0,0,0,0,0],
[0,0,0,0,0,0,'1',0,0,0,0,0,0,0,0,0],
[0,0,0,0,0,0,'1',0,0,0,0,0,0,0,0,0],
[0,0,0,0,0,0,'1',0,0,0,0,0,0,0,0,0],
[0,0,0,0,0,0,'4,1','4','4',0,0,0,0,0,0,0],
[0,0,0,0,0,0,'1',0,0,0,'5',0,0,0,0,0],
[0,0,0,0,'6','6','6,1','6','6','6','6,5','6','6','6',0,0],
[0,0,0,0,0,0,'1',0,0,0,'5',0,0,0,0,0],
[0,0,0,0,0,0,'1',0,0,0,'5',0,0,0,0,0],
[0,0,0,0,0,0,'1',0,0,'7','7,5','7','7','7',0,0],
[0,0,0,0,0,0,0,0,0,0,'5',0,0,0,0,0],
[0,0,0,0,0,0,0,0,'8','8','8,5','8','8','8','8','8'],
[0,0,0,0,0,0,0,0,0,0,'5',0,0,0,0,0]
];

var clues = ["Provide practical and organizational support to the director, actors, designers, stage crew and technicians throughout the production",
  "Expert who supervises the activities of all technical departments and oversees the use and maintenance of theater equipment (Abbreviated)",
  "A person who learns another's role in order to be able to act as a replacement at short notice",
  "The eyes, ears and hands of the stage manager in the back-stage area (Abbreviated)",
  "Oversees and orchestrates the mounting of a theatre production",
  "Also known as the dramatist who is a person who writes plays",
  "A person whose profession is acting on the stage",
  "A person who oversees all aspects of mounting a theatre production (Abbreviated)"
];

var answers = ["stagemanager",
  "td",
  "understudy",
  "asm",
  "director",
  "playwright",
  "actor",
  "producer"
  ];

//Draw grid
$.each(grid,function(i){
  var row = $('<tr></tr>');
  $.each(this,function(j){
    if(this == 0){
    $(row).append('<td class="square empty"></td>');
    }
    else{
    var question_number = String(grid[i][j]).split(",")
    var starting_number = '';
    var question_number_span = '';


    for(var k = 0;k < question_number.length;k++){
      var direction = get_direction(question_number[k]);
      console.log(direction)
      var startpos = get_startpos(question_number[k],direction);
      console.log(startpos[0])



      if(direction == "horizontal" && startpos[0] == i && startpos[1] == j){
        starting_number += question_number[k]+",";

      }
      else if(direction == "vertical" && startpos[0] == j && startpos[1] == i){
        starting_number += question_number[k]+",";
        console.log(starting_number)
      }

    }
    if(starting_number != ""){
      question_number_span = '<span class="question_number">'+starting_number.replace(/(^,)|(,$)/g, "")+'</span>';
    }
    $(row).append('<td>'+question_number_span+'<div class="square letter '+direction+'" data-number="'+this+'" contenteditable="true"></div></td>');
    }
  });
  $("#puzzle").append(row);
});

function clearAnswer(question_number){
  $("#puzzle td div").css("color","initial");

  var question_answer = answers[question_number-1];
  var direction = get_direction(question_number);
  var startpos = get_startpos(question_number,direction);
  var answer_letters = question_answer.split("");

  if(direction == "horizontal"){
    for(var i = 0; i < answer_letters.length; i++){
      $("#puzzle tr:nth-child("+(startpos[0]+1)+") td:nth-child("+(startpos[1]+1+i)+") div").text('');
    }
  }
  else if(direction == "vertical"){
    for(var i = 0; i < answer_letters.length; i++){
      $("#puzzle tr:nth-child("+(startpos[1]+1+i)+") td:nth-child("+(startpos[0]+1)+") div").text('');
    }
  }
}

function fillAnswer(question_number){
  $("#puzzle td div").css("color","initial");

  var question_answer = answers[question_number-1];
  var direction = get_direction(question_number);
  var startpos = get_startpos(question_number,direction);
  var answer_letters = question_answer.split("");

  if(direction == "horizontal"){
    for(var i = 0; i < answer_letters.length; i++){
      $("#puzzle tr:nth-child("+(startpos[0]+1)+") td:nth-child("+(startpos[1]+1+i)+") div").text(answer_letters[i]);
    }
  }
  else if(direction == "vertical"){
    for(var i = 0; i < answer_letters.length; i++){
      $("#puzzle tr:nth-child("+(startpos[1]+1+i)+") td:nth-child("+(startpos[0]+1)+") div").text(answer_letters[i]);
    }
  }
}


function checkAnswer(question_number){
  var question_answer = answers[question_number-1];
  var direction = get_direction(question_number);
  var startpos = get_startpos(question_number,direction);
  var answer_letters = question_answer.split("");

  if(direction == "horizontal"){
    for(var i = 0; i < answer_letters.length; i++){
      if($("#puzzle tr:nth-child("+(startpos[0]+1)+") td:nth-child("+(startpos[1]+1+i)+") div").text() != question_answer[i] && $("#puzzle tr:nth-child("+(startpos[0]+1)+") td:nth-child("+(startpos[1]+1+i)+") div").text() != ""){
        $("#puzzle tr:nth-child("+(startpos[0]+1)+") td:nth-child("+(startpos[1]+1+i)+") div").css("color","red");
      }
    }
  }
  else if(direction == "vertical"){
    for(var i = 0; i < answer_letters.length; i++){
      if($("#puzzle tr:nth-child("+(startpos[1]+1+i)+") td:nth-child("+(startpos[0]+1)+") div").text() != question_answer[i] && $("#puzzle tr:nth-child("+(startpos[1]+1+i)+") td:nth-child("+(startpos[0]+1)+") div").text() != ""){
        $("#puzzle tr:nth-child("+(startpos[1]+1+i)+") td:nth-child("+(startpos[0]+1)+") div").css("color","red");
      }
    }
  }
}


function showClue(question_number,i,j){
  var question_answer = answers[question_number-1];
  var direction = get_direction(question_number);
  var startpos = get_startpos(question_number,direction);
  var answer_letters = question_answer.split("");

  if(direction == "horizontal"){
    $("#puzzle tr:nth-child("+(j+1)+") td:nth-child("+(i+1)+") div").text(answer_letters[i - startpos[1]]).css("color","initial");
  }
  else if(direction == "vertical"){
    $("#puzzle tr:nth-child("+(j+1)+") td:nth-child("+(i+1)+") div").text(answer_letters[j - startpos[1]]).css("color","initial");
  }
}


//Draw hints
var vertical_hints = $('<div id="vertical_hints"></div>');
var horizontal_hints = $('<div id="horizontal_hints"></div>');
$.each(clues,function(index){

  var direction = get_direction(index+1);

  if(direction == "horizontal"){
    $(horizontal_hints).append('<div class="hint"><b>'+(index+1)+'</b>.-'+clues[index]+'</hint><form id="'+(index + 1)+'" class="horizontal"><input type="text" placeholder="Your Answer"><input class="btn btn-primary mx-4" type="submit"></form>');
  }
  else if(direction == "vertical"){
    $(vertical_hints).append('<div class="hint"><b>'+(index+1)+'</b>.-'+clues[index]+'</hint><form id="'+(index + 1)+'" class="vertical"><input type="text" placeholder="Your Answer"><input class="btn btn-primary mx-4" type="submit"></form>');
  }
});

$("#vertical_hints_container").append(vertical_hints);
$("#horizontal_hints_container").append(horizontal_hints);

var dir = ""

$(".letter").click(function(){
  dir = this.classList[2]

  if (this.closest("td").querySelector("span").innerHTML == 4) {
    dir = "horizontal"
  }
})

$(".letter").keyup(function(){


  if (dir == "horizontal") {
    var this_text = $(this).text();

    if(this_text.length >= 1){
      $(this).closest('td').next().find('.letter').focus();
      $(this).text(this_text.slice(0,1));
    }

  }

  if (dir == "vertical") {

    var this_text = $(this).text();
    var index = $(this).closest('td').index()

    if(this_text.length >= 1){
      $(this).closest('tr').next().find('td').eq(index).find('.letter').focus();
      $(this).text(this_text.slice(0,1));
    }

  }
});

$('form').submit(function(event) {

  if (this.id != "completed") {

    event.preventDefault();

    const word = this.querySelector('input').value
    const id = this.id

    for (var td of document.querySelectorAll("td")) {

      try {
        if (td.querySelector("span").innerHTML === id) {
          if (this.classList.contains("vertical")) {
            for (const letter of word) {
              var index = $(td).closest('td').index()

              td.querySelector("div").innerHTML = letter

              td = td.closest("tr").nextElementSibling.querySelectorAll("td")[index]
            }
          } else if (this.classList.contains("horizontal")) {
            for (const letter of word) {
              td.querySelector("div").innerHTML = letter
              td = td.closest('td').nextElementSibling
            }
          }
        }

      } catch (error) {

      }
    }

    this.querySelector('input').value = ""
  }

});

$(".letter").click(function(){
  document.execCommand('selectAll',false,null);

  $(".letter").removeClass("active");
  $(this).addClass("active");

  $(".hint").css("color","initial");

  var question_numbers = String($(this).data("number")).split(",");

  $.each(question_numbers,function(){
    $("#hints .hint:nth-child("+this+")").css("color","red");
  });
});

$("#solve").click(function(){
  if(!$(".letter.active").length)
    return;
  var question_numbers = String($(".letter.active").data("number")).split(",");
  $.each(question_numbers,function(){
    fillAnswer(this);
  });
});


$("#clear_all").click(function(){
  if(!$(".letter.active").length)
    return;
  var question_numbers = String($(".letter.active").data("number")).split(",");
  $.each(question_numbers,function(){
    clearAnswer(this);
  });
});

$("#check").click(function(){
  $("#puzzle td div").css("color","initial");
  for(var i = 0;i < answers.length;i++){
    checkAnswer(i+1);
  }
});

$("#clue").click(function(){
  if(!$(".letter.active").length)
   return;
  var question_numbers = String($(".letter.active").data("number")).split(",");
  showClue(question_numbers[0],$(".letter.active").parent().index(),$(".letter.active").parent().parent().index());
});

function get_direction(question_number){
  for(var i=1;i < grid.length;i++){
    for(var j=1;j < grid[i].length;j++){
      if(String(grid[i][j]).indexOf(question_number) != -1){
        if(grid[i+1][j] == question_number || grid[i-1][j] == question_number){
            return "vertical";
        }
        if(grid[i][j+1] == question_number || grid[i][j-1] == question_number){
            return "horizontal";
        }
      }
    }
  }
}

function get_startpos(question_number,direction){
  if(direction == "horizontal"){
    for(var i=0;i < grid.length;i++){
      for(var j=0;j < grid[i].length;j++){
        if(String(grid[i][j]).indexOf(question_number) != -1){
          return [i,j];
        }
      }
    }
  }
  else if(direction == "vertical"){
    for(var i=0;i < grid.length;i++){
      for(var j=0;j < grid[i].length;j++){
        try {
          //Place your code inside this try, catch block
          //Any error can now be caught and managed
          if(String(grid[j][i]).indexOf(question_number) != -1  ){
          return [i,j]
          }
      } catch (e) {
// console.log("Something went wrong", e);
// console.log("Something went wrong", e);
        }
      }
    }
  }
}
