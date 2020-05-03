Local Storage
THEN the text for that event is saved in local storage
https://developer.mozilla.org/en-US/docs/Web/API/Window/localStorage
store = window.localStorage;
localStorage.setItem('myCat', 'Tom');
var cat = localStorage.getItem('myCat');
localStorage.removeItem('myCat');
localStorage.clear();

var DAY_OBJECT = store.getItem('day');

let localDay = store.getItem('day') => dayObject || null;
#if (dayObject === null) {
if (!dayObject) {
  initializeDayObject()

}

const initializeDayObject = () => {

  #DAY_OBJECT = {
    #1: "",
    #2: "",
    #3: "",
    #4: "",
    #5: "",
    #...
    #12: "",
    #...
    #21: "",
    #22: "",
    #23: "",
    #24: "",
  #}
  let dayObject = {};
  for (let i = 1; i <= 24; i ++) {
    dayObject[i] = "" 
  }
  DAY_OBJECT = dayObject;
}

makeDayObject 

let dayObject = {
  0: "",
  1: "",
  2: "",
  3: "",
  4: "",
  5: "wake up",
  ...
  12: "lunch",
  ...
  21: "",
  22: "",
  23: "",
}



what is our object that we are persisting. 
store.setItem('dayObject', day) 

