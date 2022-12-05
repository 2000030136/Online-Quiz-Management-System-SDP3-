// select all elements
const start = document.getElementById("start");
const quiz = document.getElementById("quiz");
const question = document.getElementById("question");
const qImg = document.getElementById("qImg");
const choiceA = document.getElementById("A");
const choiceB = document.getElementById("B");
const choiceC = document.getElementById("C");
const choiceD = document.getElementById("D");
const counter = document.getElementById("counter");
const timeGauge = document.getElementById("timeGauge");
const progress = document.getElementById("progress");
const scoreDiv = document.getElementById("scoreContainer");

// create our questions
let questions = [
    {
        question : "which equation has no solution?",
        imgSrc : "img/html.png",
        choiceA : "A)-8x+2=-8x-4 ",
        choiceB : "B)12+5x=5x+12",
        choiceC : "C)6x+9=6x+9",
        choiceD : "D)15-x=-x+15",
        correct : "A"

    },{
        question : "what is the solution to : 7+ ²ˣ⁄₅ =13?",
        imgSrc : "img/css.png",
        choiceA : "A)30",
        choiceB : "B)15",
        choiceC : "C)45",
        choiceD : "D)6",
        correct : "B"
    },{
        question : "what is the solution for -x+72=-9x?",
        imgSrc : "img/css.png",
        choiceA : "A)-9",
        choiceB : "B)7.2",
        choiceC : "C)-7.2",
        choiceD : "D)9",
        correct : "A"
      },{
        question : "simplify 5(x-12)+15(3+x)",
        imgSrc : "img/css.png",
        choiceA : "A)6x+15",
        choiceB : "B)20x-105",
        choiceC : "C)20x-15",
        choiceD : "D)6x-12",
        correct : "C"
      },{
        question : "Which of the following is equivalent to 5(z+3)-4(1+p)",
        imgSrc : "img/css.png",
        choiceA : "A)5z-4p",
        choiceB : "B)5z+19+4",
        choiceC : "C)11zp",
        choiceD : "D)5z+11-4p",
        correct : "D"
      },{
        question:  "solve 1.5x-2<=10",
        imgSrc : "img/css.png",
        choiceA : "A)x<=8",
        choiceB : "B)x>=8",
        choiceC : "C)x<=5⅓",
        choiceD : "D) x>=5.3",
        correct : "A"
      },{
        question:  "what are the solutions to 3(x+5)<=3x+20",
        imgSrc : "img/css.png",
        choiceA : "A)x<=0",
        choiceB : "B)x>=15",
        choiceC : "C)no solution",
        choiceD : "D)all real numbers",
        correct : "D"
      },{
        question:  "which of the following is the most precise?",
        imgSrc : "img/css.png",
        choiceA : "A)4.458in",
        choiceB : "B)4.46in",
        choiceC : "C)4.5in",
        choiceD : "D)5in",
        correct : "A"
      },{
        question:  "?which of the following expressions has two terms and a coefficient of 6?",
        imgSrc : "img/css.png",
        choiceA : "A)6y^2-2x+10",
        choiceB : "B)6y^2-18",
        choiceC : "C)-y^2+6",
        choiceD : "D)6-12y",
        correct : "B"
      },{
        question:  "What is the product of 75.0 feet and 2.05 feet written with the correct number of significant digets?",
        imgSrc : "img/css.png",
        choiceA : "A)153.75 ft^2",
        choiceB : "B)153.8 ft^2",
        choiceC : "C)154 ft^2",
        choiceD : "D)150 ft^2",
        correct : "C"
    }
];

// create some variables

const lastQuestion = questions.length - 1;
let runningQuestion = 0;
let count = 0;
const questionTime = 300; // 5min
const gaugeWidth = 150; // 150px
const gaugeUnit = gaugeWidth / questionTime;
let TIMER;
let score = 0;

// render a question
function renderQuestion(){
    let q = questions[runningQuestion];

    question.innerHTML = "<p>"+ q.question +"</p>";
    qImg.innerHTML = "<img src="+ q.imgSrc +">";
    choiceA.innerHTML = q.choiceA;
    choiceB.innerHTML = q.choiceB;
    choiceC.innerHTML = q.choiceC;
    choiceD.innerHTML = q.choiceD;
}

start.addEventListener("click",startQuiz);

// start quiz
function startQuiz(){
    start.style.display = "none";
    renderQuestion();
    quiz.style.display = "block";
    renderProgress();
    renderCounter();
    TIMER = setInterval(renderCounter,1000); // 1000ms = 1s
}

// render progress
function renderProgress(){
    for(let qIndex = 0; qIndex <= lastQuestion; qIndex++){
        progress.innerHTML += "<div class='prog' id="+ qIndex +"></div>";
    }
}

// counter render

function renderCounter(){
    if(count <= questionTime){
        counter.innerHTML = count;
        timeGauge.style.width = count * gaugeUnit + "px";
        count++
    }else{
        count = 0;
        // change progress color to red
        answerIsWrong();
        if(runningQuestion < lastQuestion){
            runningQuestion++;
            renderQuestion();
        }else{
            // end the quiz and show the score
            clearInterval(TIMER);
            scoreRender();
        }
    }
}

// checkAnwer

function checkAnswer(answer){
    if( answer == questions[runningQuestion].correct){
        // answer is correct
        score++;
        // change progress color to green
        answerIsCorrect();
    }else{
        // answer is wrong
        // change progress color to red
        answerIsWrong();
    }
    count = 0;
    if(runningQuestion < lastQuestion){
        runningQuestion++;
        renderQuestion();
    }else{
        // end the quiz and show the score
        clearInterval(TIMER);
        scoreRender();
    }
}

// answer is correct
function answerIsCorrect(){
    document.getElementById(runningQuestion).style.backgroundColor = "#0f0";
}

// answer is Wrong
function answerIsWrong(){
    document.getElementById(runningQuestion).style.backgroundColor = "#f00";
}

// score render
function scoreRender(){
    scoreDiv.style.display = "block";

    // calculate the amount of question percent answered by the user
    const scorePerCent = Math.round(100 * score/questions.length);

    // choose the image based on the scorePerCent
    let img = (scorePerCent >= 80) ? "img/5.png" :
              (scorePerCent >= 60) ? "img/4.png" :
              (scorePerCent >= 40) ? "img/3.png" :
              (scorePerCent >= 20) ? "img/2.png" :
              "img/1.png";

    scoreDiv.innerHTML = "<img src="+ img +">";
    scoreDiv.innerHTML += "<p>"+ scorePerCent +"%</p>";
}