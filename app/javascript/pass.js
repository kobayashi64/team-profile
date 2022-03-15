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



document.addEventListener('DOMContentLoaded', function() {
  const self_assessment  = document.getElementById("self_assessment");
  const self_assessment_2  = document.getElementById("self_assessment_2");
  const self_assessment_3  = document.getElementById("self_assessment_3");
  const self_assessment_4  = document.getElementById("self_assessment_4");
  const self_assessment_5  = document.getElementById("self_assessment_5");
  
    const countVal = self_assessment.value
    const passNum  = document.getElementById("pass");
    if (countVal < 50) {
      passNum.innerHTML = ("がんばりましょう！") ;
     } else if (50 <= countVal && countVal < 70) {
      passNum.innerHTML = ("惜しい！もう一息です。")
     } else if (70 <= countVal) {
      passNum.innerHTML = ("合格です！おめでとう！")
     }

     const countVal_2 = self_assessment_2.value
     const passNum_2  = document.getElementById("pass_2");
     if (countVal_2 < 50) {
       passNum_2.innerHTML = ("がんばりましょう！") ;
      } else if (50 <= countVal_2 && countVal_2 < 70) {
       passNum_2.innerHTML = ("惜しい！もう一息です。")
      } else if (70 <= countVal_2) {
       passNum_2.innerHTML = ("合格です！おめでとう！")
      }

      const countVal_3 = self_assessment_3.value
      const passNum_3  = document.getElementById("pass_3");
      if (countVal_3 < 50) {
        passNum_3.innerHTML = ("がんばりましょう！") ;
       } else if (50 <= countVal_3 && countVal_3 < 70) {
        passNum_3.innerHTML = ("惜しい！もう一息です。")
       } else if (70 <= countVal_3) {
        passNum_3.innerHTML = ("合格です！おめでとう！")
       }

       const countVal_4 = self_assessment_4.value
       const passNum_4  = document.getElementById("pass_4");
       if (countVal_4 < 50) {
         passNum_4.innerHTML = ("がんばりましょう！") ;
        } else if (50 <= countVal_4 && countVal_4 < 70) {
         passNum_4.innerHTML = ("惜しい！もう一息です。")
        } else if (70 <= countVal_4) {
         passNum_4.innerHTML = ("合格です！おめでとう！")
        }

        const countVal_5 = self_assessment_5.value
        const passNum_5  = document.getElementById("pass_5");
        if (countVal_5 < 50) {
          passNum_5.innerHTML = ("がんばりましょう！") ;
         } else if (50 <= countVal_5 && countVal_5 < 70) {
          passNum_5.innerHTML = ("惜しい！もう一息です。")
         } else if (70 <= countVal_5) {
          passNum_5.innerHTML = ("合格です！おめでとう！")
         }
});


document.addEventListener('DOMContentLoaded', function() {
  const self_assessment  = document.getElementById("self_assessment");
  const self_assessment_2  = document.getElementById("self_assessment_2");
  const self_assessment_3  = document.getElementById("self_assessment_3");
  const self_assessment_4  = document.getElementById("self_assessment_4");
  const self_assessment_5  = document.getElementById("self_assessment_5");

  const countVal = self_assessment.value
  const countVal_2 = self_assessment_2.value
  const countVal_3 = self_assessment_3.value
  const countVal_4 = self_assessment_4.value
  const countVal_5 = self_assessment_5.value


  const c_passed_card = `<div class="card mb-3" style="max-width: 100%;">
  <div class="row no-gutters">
    <div class="col-md-4">
      <svg class="bd-placeholder-img" width="100%" height="250" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Image"><title>Placeholder</title><rect fill="#868e96" width="100%" height="100%"/> <text fill="#dee2e6" dy=".3em" x="50%" y="50%"><%= image_tag user.image, class: "img-fluid"%> </text></svg>
    </div>
    <div class="col-md-8">
      <div class="card-body">
      <h5 class="card-title">C認定達成です！おめでとうございます！</h5>
      <p class="card-text">編集完了ボタンを押下し、マイページ(Edit account)から認定ステータスを変更して下さい</p>
        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
      </div>
    </div>
  </div>
</div>`;

  const passNum  = document.getElementById("c_passed");
  if (countVal > 69  && countVal_2 > 69 && countVal_3 > 69 && countVal_4 > 69 && countVal_5 > 69) {
    passNum.innerHTML = (c_passed_card); }
      else {
        passNum.innerHTML = (``)} 
});

function count_6 (){
  const self_assessment    = document.getElementById("self_assessment");
  const self_assessment_2  = document.getElementById("self_assessment_2");
  const self_assessment_3  = document.getElementById("self_assessment_3");
  const self_assessment_4  = document.getElementById("self_assessment_4");
  const self_assessment_5  = document.getElementById("self_assessment_5");

  const c_passed_card = `<div class="card mb-3" style="max-width: 540px;">
  <div class="row no-gutters">
    <div class="col-md-4">
      <svg class="bd-placeholder-img" width="100%" height="250" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Image"><title>Placeholder</title><rect fill="#868e96" width="100%" height="100%"/><text fill="#dee2e6" dy=".3em" x="50%" y="50%">Image</text></svg>
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">C認定達成おめどとうございます！</h5>
        <p class="card-text">編集完了ボタンを押下し、マイページ(Edit account)から認定ステータスを変更して下さい</p>
        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
      </div>
    </div>
  </div>
</div>`;


  self_assessment.addEventListener("keyup", () => {
  
    const countVal = self_assessment.value
  
    const countVal_2 = self_assessment_2.value
    const countVal_3 = self_assessment_3.value
    const countVal_4 = self_assessment_4.value
    const countVal_5 = self_assessment_5.value

    const passNum  = document.getElementById("c_passed");
    if (countVal > 69  && countVal_2 > 69 && countVal_3 > 69 && countVal_4 > 69 && countVal_5 > 69) {
      passNum.innerHTML = ( c_passed_card ); }
      else {
        passNum.innerHTML = (``)} 
  });


  self_assessment_2.addEventListener("keyup", () => {
  
    const countVal = self_assessment.value
    const countVal_2 = self_assessment_2.value
    const countVal_3 = self_assessment_3.value
    const countVal_4 = self_assessment_4.value
    const countVal_5 = self_assessment_5.value

    const passNum  = document.getElementById("c_passed");
    if (countVal > 69  && countVal_2 > 69 && countVal_3 > 69 && countVal_4 > 69 && countVal_5 > 69) {
      passNum.innerHTML = (c_passed_card); }
      else {
        passNum.innerHTML = (``)} 
  });

  self_assessment_3.addEventListener("keyup", () => {
  
    const countVal = self_assessment.value
  
    const countVal_2 = self_assessment_2.value
    const countVal_3 = self_assessment_3.value
    const countVal_4 = self_assessment_4.value
    const countVal_5 = self_assessment_5.value

    const passNum  = document.getElementById("c_passed");
    if (countVal > 69  && countVal_2 > 69 && countVal_3 > 69 && countVal_4 > 69 && countVal_5 > 69) {
      passNum.innerHTML = (c_passed_card); }
      else {
        passNum.innerHTML = (``)} 
  });


  self_assessment_4.addEventListener("keyup", () => {
  
    const countVal = self_assessment.value
    const countVal_2 = self_assessment_2.value
    const countVal_3 = self_assessment_3.value
    const countVal_4 = self_assessment_4.value
    const countVal_5 = self_assessment_5.value

    const passNum  = document.getElementById("c_passed");
    if (countVal > 69  && countVal_2 > 69 && countVal_3 > 69 && countVal_4 > 69 && countVal_5 > 69) {
      passNum.innerHTML = (c_passed_card); }
      else {
        passNum.innerHTML = (``)} 
  });

  self_assessment_5.addEventListener("keyup", () => {
  
    const countVal = self_assessment.value
    const countVal_2 = self_assessment_2.value
    const countVal_3 = self_assessment_3.value
    const countVal_4 = self_assessment_4.value
    const countVal_5 = self_assessment_5.value

    const passNum  = document.getElementById("c_passed");
    if (countVal > 69  && countVal_2 > 69 && countVal_3 > 69 && countVal_4 > 69 && countVal_5 > 69) {
      passNum.innerHTML = (c_passed_card); }
      else {
        passNum.innerHTML = (``)} 
  });
  };

window.addEventListener('load', count_6);