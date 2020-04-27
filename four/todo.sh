# Todo
list => next() => {"question": string, "answers": ["asdf", "sdffd", "correct_answer"], "correct": 3} 

compare_answer = (answer: string, correct: string): boolean => {
  preprocess => trim, to_lowercase, 
  return answer === correct
}

class List {
  function constructor(questions) {
      this.questions = questions
      this.index = 0 
  }
  function next() {
    if (this.index < this.questions.len())
      const questions = this.questions[this.index]
      this.index += 1
      return question
  } else {
    return null 
  }
}

questions = [
  {
    "question": "what is it",
    "answer": "it is"
  },
  ...
]

questionList = new List(questions)

list.next()

next_question = list.next()
if (next_question) {
  ask_question
} else {
  finish_game()
}

## List Todo
display question with button. 
onClick display next question. 
when no more questions, display done. 

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Timer
class Timer {
  #https://momentjs.com/
  #This is incorrect use of moment, but we can figure it out
  function constructor() {
    this.endTime = moment.now() + moment.add(10, 'seconds');
  }
  
  function getTimeLeft() {
    this.endTime.subtract(moment.now())
  }

  function subtractTime() {
    this.endTime.subtract(1, 'second')
  }

  function gameOver() {
    this.getTimeLeft.before(this.endTime)
  }
}

window.setInterval(function(){
  document.getElementById("time")
  time.value = timer.getTimeLeft().toString()
}, 100);


# Score
## Current Game
current_game_score (score) = global variable that get incremented
  var score
  score += 1

## Past Game 
https://developer.mozilla.org/en-US/docs/Web/API/Window/localStorage
Use window.localStorage to store past scores. 
scores = [{"soey": 3}, {"danny": 2}]
window.localStorage.setItem('scores': scores);
window.localStorage.getItem('scores'); # => scores

## States
PreGame. 
- score is 0, 
- questions are initialized.
- time is at maximum time 30

InGame.
- score updates
- questions are asked
- time is removes when mistakes happen

PostGame.
- see results of our game
- save our score
- play again? 

Challenges:
how do we switch states? 
How do we start?
 - does the start disappear
how do we show time updates? 
  setTimeout() => yay
  requestAnimationFrame() => probably not right
how do we get the timer to show seconds and not time?
how does the page change when user enter score? 
- modal?
- form appear at the bottom of the screen?

CheckingAnswer
<select id="answer">
  <option selected>Choose...</option>
  <option id="answer_1" value="1">loading...</option>
  <option id="answer_2" value="2">loading...</option>
  <option id="answer_3" value="3">loading...</option>
</select>

function checkAnswer(answer: string) {
  var select = document.getElementById('answer');
  var currentOpt = select.options[select.selectedIndex]; 

  return currentOpt == answer
}

if answer is correct do stuff 
else do other stuff









