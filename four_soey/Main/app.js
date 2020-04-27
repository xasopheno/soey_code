// how add multiple items into an obect variable, key
//how to call multiple object variable keys at once

$(document).ready(function () {
  var questions = [
    {
      title: "q1",
      content: "This is the first question",
      choices: [
        { text: "aaa", value: 0 },
        { text: "bbb", value: 1 },
        { text: "ccc", value: 2 },
      ],
      answer: "",
    },
    {
      title: "q2",
      content: "This is the second question",
      choices: [
        { text: "eee", value: 0 },
        { text: "fff", value: 1 },
        { text: "ggg", value: 2 },
      ],
      answer: "",
    },
  ];

  let count = 0;
  $("#question").text(questions[count].content);
  $("#nextQuestion").on("click", function () {
    count++;
    if (count === questions.length) {
      count = 0;
    }
    let questionCountSpan = document.querySelector("#question-count");
    questionCountSpan.textContent = count + 1;

    $("#question").text(questions[count].content);
    let optionList = document.querySelector("#answers").options;
    optionList.length = 0;

    let options = questions[count].choices;

    options.forEach((option) => {
      let o = new Option(option.text, option.value, option.selected);
      optionList.add(o);
    });
  });
});
