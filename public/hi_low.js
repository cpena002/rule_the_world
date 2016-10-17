var randNumber = Math.floor((Math.random() * 100) + 1);
console.log(randNumber);

  var counter = 0 //the var was initially inside the guess function so everytime the submit button was clicked, the counter was set back to 0.

  function guess() { //this function determines whether your guess is too high, too low or correct. Its also adds 1 to the counter every time you guess.

    counter++

    console.log(counter);

    if (counter === 6) {
      alert("You have one more try")
    }
    if (counter === 7) {
      alert("You've lost")
    }
    var guess =  document.getElementById('userNumber').value;//var guess with .value gives us access to the users input in the text bar
    if (randNumber < parseInt(guess)) {
      document.getElementById('result').innerHTML="Answer: Your number is too high"
    } //.innerHTML with the 'result' id modifies the text inside h3 in html. doc.
    if (randNumber > parseInt(guess)) {
      document.getElementById('result').innerHTML="Answer: Your number is too low"
    }
    if (randNumber === parseInt(guess)) {
      document.getElementById('result').innerHTML="Answer: You win!!"
      }
  };
