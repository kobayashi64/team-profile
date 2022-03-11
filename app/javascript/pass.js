//const { end } = require("@popperjs/core");

function count (){
  const self_assessment  = document.getElementById("self_assessment");
  self_assessment.addEventListener("keyup", () => {
  
    const countVal = self_assessment.value
    const passNum  = document.getElementById("pass");
    if (countVal < 50) {
      passNum.innerHTML = ("がんばりましょう！") ;
     } else if (50 <= countVal && countVal < 70) {
      passNum.innerHTML = ("惜しい！もう一息です。")
     } else if (70 <= countVal) {
      passNum.innerHTML = ("合格です！おめでとう！")
     }
  });
  };

window.addEventListener('load', count);

function count_2 (){
  const self_assessment_2  = document.getElementById("self_assessment_2");
  self_assessment_2.addEventListener("keyup", () => {
  
    const countVal = self_assessment_2.value
    const passNum  = document.getElementById("pass_2");
    if (countVal < 50) {
      passNum.innerHTML = ("がんばりましょう！") ;
     } else if (50 <= countVal && countVal < 70) {
      passNum.innerHTML = ("惜しい！もう一息です。")
     } else if (70 <= countVal) {
      passNum.innerHTML = ("合格です！おめでとう！")
     }
  });
  };

window.addEventListener('load', count_2);


function count_3 (){
  const self_assessment_3  = document.getElementById("self_assessment_3");
  self_assessment_3.addEventListener("keyup", () => {
  
    const countVal = self_assessment_3.value
    const passNum  = document.getElementById("pass_3");
    if (countVal < 50) {
      passNum.innerHTML = ("がんばりましょう！") ;
     } else if (50 <= countVal && countVal < 70) {
      passNum.innerHTML = ("惜しい！もう一息です。")
     } else if (70 <= countVal) {
      passNum.innerHTML = ("合格です！おめでとう！")
     }
  });
  };

window.addEventListener('load', count_3);


function count_4 (){
  const self_assessment_4  = document.getElementById("self_assessment_4");
  self_assessment_4.addEventListener("keyup", () => {
  
    const countVal = self_assessment_4.value
    const passNum  = document.getElementById("pass_4");
    if (countVal < 50) {
      passNum.innerHTML = ("がんばりましょう！") ;
     } else if (50 <= countVal && countVal < 70) {
      passNum.innerHTML = ("惜しい！もう一息です。")
     } else if (70 <= countVal) {
      passNum.innerHTML = ("合格です！おめでとう！")
     }
  });
  };

window.addEventListener('load', count_4);


function count_5 (){
  const self_assessment_5  = document.getElementById("self_assessment_5");
  self_assessment_5.addEventListener("keyup", () => {
  
    const countVal = self_assessment_5.value
    const passNum  = document.getElementById("pass_5");
    if (countVal < 50) {
      passNum.innerHTML = ("がんばりましょう！") ;
     } else if (50 <= countVal && countVal < 70) {
      passNum.innerHTML = ("惜しい！もう一息です。")
     } else if (70 <= countVal) {
      passNum.innerHTML = ("合格です！おめでとう！")
     }
  });
  };

window.addEventListener('load', count_5);


function count_6 (){
  const self_assessment  = document.getElementById("self_assessment");
  self_assessment.addEventListener("mousemove", () => {
  
    const countVal = self_assessment.value
    const passNum  = document.getElementById("pass");
    if (countVal < 50) {
      passNum.innerHTML = ("がんばりましょう！") ;
     } else if (50 <= countVal && countVal < 70) {
      passNum.innerHTML = ("惜しい！もう一息です。")
     } else if (70 <= countVal) {
      passNum.innerHTML = ("合格です！おめでとう！")
     }
  });
  };

window.addEventListener('load', count_6);