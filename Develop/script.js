// Assignment Code

// Write password to the #password input
//const writePassword = () => {
function writePassword() {
  //result of calling generatePassword
  let password = generatePassword();

  let passwordText = document.querySelector("#password");

  passwordText.value = password;
}

function generateAlphabet() {
  let alphabet = [];

  for (let i = 65; i < 91; i++) {
    let letter = String.fromCharCode(i);
    alphabet.push(letter);
    alphabet.push(letter.toLowerCase());
  }

  for (let n = 0; n < 10; n++) {
    alphabet.push(n.toString());
  }

  return alphabet;
}

function randomRange(range) {
  return Math.floor(Math.random() * range);
}

function generatePassword() {
  const alphabet = generateAlphabet();

  let password = [];

  for (let i = 0; i < 32; i++) {
    let randomNum = randomRange(alphabet.length);
    password.push(alphabet[randomNum]);
  }

  return password.join("");
}

var generateBtn = document.querySelector("#generate");
// Add event listener to generate button
generateBtn.addEventListener("click", writePassword);

