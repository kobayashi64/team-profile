//const { end } = require("@popperjs/core");

function count (){
  const self_assessment  = document.getElementById("self_assessment");
  self_assessment.addEventListener("keyup", () => {
  
    const countVal = self_assessment.value
    const passNum  = document.getElementById("pass");
    const passed = "○"
    if (countVal > 5 ){
    
    passNum.innerHTML =  passed}



    
  });
};

window.addEventListener('load', count);
