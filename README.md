<!DOCTYPE html>
<html lang="pt-PT">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="theme-color" content="#ff7900">
<title>Study AI</title>

<style>
:root{
  --orange:#ff7900;
  --orange2:#ff9d35;
  --black:#080808;
  --dark:#151515;
  --card:#202020;
  --text:#fff;
  --muted:#aaa;
  --green:#22c77a;
}

*{box-sizing:border-box}

body{
  margin:0;
  background:linear-gradient(135deg,#050505,#241000);
  color:var(--text);
  font-family:Arial,Helvetica,sans-serif;
  min-height:100vh;
}

header{
  position:sticky;
  top:0;
  z-index:20;
  display:flex;
  align-items:center;
  justify-content:space-between;
  padding:14px 18px;
  background:#080808ee;
  backdrop-filter:blur(12px);
  border-bottom:1px solid #333;
}

.logo{
  font-size:26px;
  font-weight:900;
  color:var(--orange);
}

.logo span{color:white}

button,select,input{
  font:inherit;
}

button{
  border:0;
  border-radius:12px;
  padding:11px 16px;
  font-weight:bold;
  cursor:pointer;
}

.primary{
  background:var(--orange);
  color:#111;
}

.secondary{
  background:#292929;
  color:white;
}

.premium{
  background:linear-gradient(135deg,#ff7900,#ffb14d);
  color:#111;
}

main{
  max-width:1100px;
  margin:auto;
  padding:25px 18px 60px;
}

.page{display:none}
.page.active{display:block}

.hero{
  padding:30px 0;
}

.hero h1{
  font-size:clamp(42px,8vw,72px);
  line-height:.98;
  margin:12px 0;
}

.orange{color:var(--orange)}

.hero p{
  color:var(--muted);
  font-size:18px;
  line-height:1.5;
  max-width:700px;
}

.nav{
  display:flex;
  gap:8px;
  overflow:auto;
  margin-bottom:25px;
}

.nav button{
  white-space:nowrap;
}

.grid{
  display:grid;
  grid-template-columns:repeat(auto-fit,minmax(210px,1fr));
  gap:15px;
}

.card{
  background:linear-gradient(145deg,#202020,#141414);
  border:1px solid #333;
  border-radius:18px;
  padding:20px;
  margin-bottom:15px;
}

.card:hover{
  border-color:#754114;
}

.icon{
  font-size:32px;
}

.card h2,.card h3{
  margin-top:10px;
}

.card p{
  color:var(--muted);
  line-height:1.5;
}

.row{
  display:flex;
  gap:9px;
  flex-wrap:wrap;
  align-items:center;
}

select,input{
  background:#202020;
  color:white;
  border:1px solid #444;
  border-radius:12px;
  padding:12px;
}

input{
  width:100%;
}

.quiz{
  max-width:800px;
  margin:auto;
}

.progress{
  height:8px;
  background:#333;
  border-radius:20px;
  overflow:hidden;
  margin:20px 0;
}

.progress div{
  height:100%;
  background:var(--orange);
  transition:.3s;
}

.question{
  font-size:25px;
  font-weight:900;
  line-height:1.35;
  margin:25px 0 20px;
}

.answers{
  display:grid;
  gap:10px;
}

.answer{
  background:#252525;
  color:white;
  border:1px solid #444;
  text-align:left;
}

.answer:hover{
  border-color:var(--orange);
}

.correct{
  background:#104d33!important;
  border-color:var(--green)!important;
}

.wrong{
  background:#541b1b!important;
  border-color:#ff4d4d!important;
}

.score{
  font-size:60px;
  font-weight:900;
  color:var(--orange);
}

.badge{
  display:inline-block;
  background:#3a210c;
  color:var(--orange2);
  border:1px solid #754114;
  border-radius:20px;
  padding:6px 10px;
  font-size:12px;
  font-weight:bold;
}

.chat{
  height:350px;
  overflow-y:auto;
  background:#0c0c0c;
  border-radius:15px;
  padding:14px;
  margin:15px 0;
}

.msg{
  padding:11px 13px;
  border-radius:13px;
  margin:8px 0;
  max-width:90%;
  line-height:1.5;
}

.bot{background:#292929}
.me{
  background:#713600;
  margin-left:auto;
}

.chatbar{
  display:flex;
  gap:8px;
}

.chatbar input{flex:1}

.price{
  font-size:38px;
  font-weight:900;
  color:var(--orange);
}

.feature{
  padding:10px 0;
  border-bottom:1px solid #333;
}

.feature:last-child{
  border-bottom:0;
}

.hidden{display:none}

footer{
  text-align:center;
  color:#777;
  padding:30px;
}

@media(max-width:600px){
  .hero h1{font-size:48px}
  .chatbar{flex-direction:column}
  .question{font-size:21px}
}
</style>
</head>

<body>

<header>

  <div class="logo">
    Study <span>AI</span>
  </div>

  <div class="row">
    <button class="secondary" onclick="showPage('home')">
      Início
    </button>

    <button class="secondary" onclick="showPage('settings')">
      ⚙️
    </button>
  </div>

</header>

<main>

<!-- HOME -->

<section id="home" class="page active">

  <div class="hero">

    <span class="badge">🚀 STUDY AI</span>

    <h1>
      Estuda.<br>
      <span class="orange">Joga.</span><br>
      Aprende.
    </h1>

    <p>
      A tua aplicação de estudo para todos os anos de escolaridade.
      Aprende através de desafios, acompanha o teu progresso e usa
      o Study AI como assistente.
    </p>

  </div>

  <div class="nav">

    <button class="primary"
            onclick="showPage('challenges')">
      🎮 Desafios
    </button>

    <button class="secondary"
            onclick="showPage('ai')">
      🤖 Study AI
    </button>

    <button class="secondary"
            onclick="showPage('progress')">
      📊 Progresso
    </button>

    <button class="premium"
            onclick="showPage('premium')">
      ⭐ Premium
    </button>

  </div>

  <div class="grid">

    <div class="card">

      <div class="icon">🎯</div>

      <h3>Desafios</h3>

      <p>
        Testa os teus conhecimentos e ganha XP.
      </p>

      <button class="primary"
              onclick="showPage('challenges')">
        Começar
      </button>

    </div>

    <div class="card">

      <div class="icon">🤖</div>

      <h3>Study AI</h3>

      <p>
        Faz perguntas e recebe explicações de estudo.
      </p>

      <button class="primary"
              onclick="showPage('ai')">
        Abrir
      </button>

    </div>

    <div class="card">

      <div class="icon">⭐</div>

      <h3>XP</h3>

      <p>
        Tens <b id="homeXP">0</b> XP.
      </p>

    </div>

    <div class="card">

      <div class="icon">🔥</div>

      <h3>Sequência</h3>

      <p>
        <b id="homeStreak">0</b> dias.
      </p>

    </div>

  </div>

</section>


<!-- DESAFIOS -->

<section id="challenges" class="page">

  <div class="quiz">

    <button class="secondary"
            onclick="showPage('home')">
      ← Voltar
    </button>

    <h2>🎮 Desafios</h2>

    <div class="card">

      <h3>Escolhe o teu estudo</h3>

      <div class="row">

        <select id="year">

          <option>1.º ano</option>
          <option>2.º ano</option>
          <option>3.º ano</option>
          <option>4.º ano</option>
          <option>5.º ano</option>
          <option>6.º ano</option>
          <option>7.º ano</option>
          <option selected>8.º ano</option>
          <option>9.º ano</option>
          <option>10.º ano</option>
          <option>11.º ano</option>
          <option>12.º ano</option>

        </select>

        <select id="subject">

          <option>Matemática</option>
          <option>Português</option>
          <option>Ciências</option>
          <option>História</option>
          <option>Geografia</option>
          <option>Inglês</option>

        </select>

        <button class="primary"
                onclick="startQuiz()">
          Começar desafio
        </button>

      </div>

    </div>

    <div id="quizBox"></div>

  </div>

</section>


<!-- AI -->

<section id="ai" class="page">

  <div class="card">

    <button class="secondary"
            onclick="showPage('home')">
      ← Voltar
    </button>

    <h2>🤖 Study AI</h2>

    <p>
      O teu assistente de estudo.
    </p>

    <div id="chat" class="chat">

      <div class="msg bot">

        Olá! 👋 Sou o Study AI.
        Podes perguntar-me coisas sobre a matéria.

      </div>

    </div>

    <div class="chatbar">

      <input
        id="chatInput"
        placeholder="Ex.: Explica-me as frações..."
        onkeydown="if(event.key==='Enter') askAI()"
      >

      <button class="primary"
              onclick="askAI()">
        Enviar
      </button>

    </div>

  </div>

</section>


<!-- PROGRESSO -->

<section id="progress" class="page">

  <div class="card">

    <button class="secondary"
            onclick="showPage('home')">
      ← Voltar
    </button>

    <h2>📊 O teu progresso</h2>

    <div class="score"
         id="bigXP">
      0 XP
    </div>

    <p>
      ✅ Respostas certas:
      <b id="rightAnswers">0</b>
    </p>

    <p>
      🎮 Perguntas respondidas:
      <b id="totalAnswers">0</b>
    </p>

    <p>
      🔥 Sequência:
      <b id="bigStreak">0</b> dias
    </p>

    <br>

    <button class="secondary"
            onclick="resetProgress()">
      Repor progresso
    </button>

  </div>

</section>


<!-- PREMIUM -->

<section id="premium" class="page">

  <div class="card">

    <button class="secondary"
            onclick="showPage('home')">
      ← Voltar
    </button>

    <h2>⭐ Study AI Premium</h2>

    <p>
      Desbloqueia funcionalidades adicionais
      para estudar.
    </p>

    <div class="grid">

      <div class="card">

        <h3>Mensal</h3>

        <div class="price">
          5,99 €
        </div>

        <p>por mês</p>

        <button class="premium"
                onclick="premiumMessage()">
          Escolher mensal
        </button>

      </div>

      <div class="card">

        <h3>Anual</h3>

        <div class="price">
          16,99 €
        </div>

        <p>por ano</p>

        <button class="premium"
                onclick="premiumMessage()">
          Escolher anual
        </button>

      </div>

    </div>

    <h3>Incluído no Premium</h3>

    <div class="feature">
      🎵 Música para estudar
    </div>

    <div class="feature">
      📚 Mais conteúdos e desafios
    </div>

    <div class="feature">
      ⭐ Funcionalidades Premium
    </div>

    <div class="feature">
      🌍 Mais opções de idioma
    </div>

  </div>

</section>


<!-- MÚSICA -->

<section id="music" class="page">

  <div class="card">

    <button class="secondary"
            onclick="showPage('home')">
      ← Voltar
    </button>

    <h2>🎵 Música para estudar</h2>

    <p>
      Funcionalidade Premium.
    </p>

    <button class="premium"
            onclick="playMusic()">
      ▶️ Iniciar música
    </button>

    <button class="secondary"
            onclick="stopMusic()">
      ⏹️ Parar
    </button>

    <p id="musicStatus"></p>

  </div>

</section>


<!-- DEFINIÇÕES -->

<section id="settings" class="page">

  <div class="card">

    <button class="secondary"
            onclick="showPage('home')">
      ← Voltar
    </button>

    <h2>⚙️ Definições</h2>

    <p>Nome</p>

    <input
      id="userName"
      placeholder="Escreve o teu nome"
      onchange="saveName()"
    >

    <br><br>

    <p>Idioma</p>

    <select id="language"
            onchange="changeLanguage()">

      <option value="pt">
        Português (Portugal)
      </option>

      <option value="en">
        English
      </option>

      <option value="es">
        Español
      </option>

      <option value="fr">
        Français
      </option>

    </select>

    <p class="card"
       style="margin-top:20px">

      🌍 O idioma pode ser alterado a qualquer
      momento nas definições.

    </p>

  </div>

</section>

</main>

<footer>
  Study AI • Aprende ao teu ritmo 🚀
</footer>


<script>

/* =========================
   DADOS
========================= */

const questions = {

"Matemática":[

[
"Quanto é 8 × 7?",
["54","56","64","48"],1
],

[
"Qual é o resultado de 3²?",
["6","9","12","8"],1
],

[
"Qual é 25% de 200?",
["25","40","50","75"],2
],

[
"Quanto é 3/4 em decimal?",
["0,25","0,5","0,75","1,25"],2
],

[
"Qual é a raiz quadrada de 81?",
["7","8","9","10"],2
],

[
"Quanto é 2⁵?",
["10","16","25","32"],3
],

[
"Quanto é -3 + 8?",
["-11","-5","5","11"],2
],

[
"Qual é a área de um quadrado de lado 6 cm?",
["12 cm²","24 cm²","36 cm²","42 cm²"],2
]

],

"Português":[

[
"Qual é o verbo em 'O João estuda Matemática'?",
["João","estuda","Matemática","O"],1
],

[
"Uma oração introduzida por 'porque' pode ser...",
["causal","temporal","concessiva","final"],0
],

[
"Qual é o antónimo de 'rápido'?",
["veloz","lento","forte","alto"],1
],

[
"Qual é o plural de 'animal'?",
["animals","animais","animalis","animales"],1
],

[
"Em 'Quando cheguei, ele saiu', a oração 'Quando cheguei' é...",
["causal","temporal","consecutiva","concessiva"],1
],

[
"Qual destas palavras é um adjetivo?",
["correr","bonito","rapidamente","casa"],1
]

],

"Ciências":[

[
"Qual é o órgão que bombeia o sangue?",
["Pulmão","Coração","Fígado","Rim"],1
],

[
"Qual é a fórmula química da água?",
["CO₂","O₂","H₂O","NaCl"],2
],

[
"Onde ocorre principalmente a fotossíntese?",
["Raízes","Folhas","Frutos","Sementes"],1
],

[
"Qual é o gás mais abundante na atmosfera?",
["Oxigénio","Azoto","CO₂","Hidrogénio"],1
],

[
"A água ferve, ao nível do mar, aproximadamente a...",
["0 °C","50 °C","100 °C","200 °C"],2
]

],

"História":[

[
"Em que ano começou a Revolução Francesa?",
["1492","1640","1789","1910"],2
],

[
"Quem foi o primeiro rei de Portugal?",
["D. Afonso Henriques","D. João II","D. Sebastião","D. Manuel I"],0
],

[
"Em que ano ocorreu a Implantação da República?",
["1640","1755","1820","1910"],3
],

[
"O terramoto de Lisboa ocorreu em...",
["1500","1640","1755","1808"],2
],

[
"A Revolução Liberal Portuguesa começou em...",
["1385","1640","1820","1910"],2
]

],

"Geografia":[

[
"Qual é a capital de Portugal?",
["Porto","Lisboa","Coimbra","Braga"],1
],

[
"Qual é o maior oceano?",
["Atlântico","Índico","Pacífico","Ártico"],2
],

[
"O que representa a latitude?",
[
"Distância ao Equador",
"Distância a Greenwich",
"Altitude",
"População"
],0
],

[
"Portugal pertence ao continente...",
["Ásia","Europa","África","América"],1
],

[
"Qual destes é um recurso renovável?",
["Carvão","Petróleo","Vento","Gás natural"],2
]

],

"Inglês":[

[
"'House' significa...",
["Casa","Carro","Escola","Livro"],0
],

[
"Qual é o passado de 'go'?",
["goed","went","gone","goes"],1
],

[
"'I am studying' está no...",
[
"Present Simple",
"Present Continuous",
"Past Simple",
"Future"
],1
],

[
"'Book' significa...",
["Caneta","Livro","Mesa","Janela"],1
],

[
"O plural de 'child' é...",
["childs","children","childes","childrens"],1
]

]

};


/* =========================
   ESTADO
========================= */

let state =
JSON.parse(localStorage.getItem("studyAI"))
||
{
  xp:0,
  correct:0,
  total:0,
  streak:0,
  name:""
};

let quiz=[];
let questionIndex=0;
let answered=false;


/* =========================
   NAVEGAÇÃO
========================= */

function showPage(id){

  document
    .querySelectorAll(".page")
    .forEach(page=>{
      page.classList.remove("active");
    });

  document
    .getElementById(id)
    .classList.add("active");

  window.scrollTo(0,0);

  updateUI();

}


/* =========================
   LOCAL STORAGE
========================= */

function save(){

  localStorage.setItem(
    "studyAI",
    JSON.stringify(state)
  );

  updateUI();

}


function updateUI(){

  document.getElementById("homeXP").textContent =
    state.xp;

  document.getElementById("homeStreak").textContent =
    state.streak;

  document.getElementById("bigXP").textContent =
    state.xp + " XP";

  document.getElementById("rightAnswers").textContent =
    state.correct;

  document.getElementById("totalAnswers").textContent =
    state.total;

  document.getElementById("bigStreak").textContent =
    state.streak;

  document.getElementById("userName").value =
    state.name || "";

}


/* =========================
   QUIZ
========================= */

function shuffle(array){

  return [...array].sort(
    ()=>Math.random()-0.5
  );

}


function startQuiz(){

  const subject =
    document.getElementById("subject").value;

  quiz =
    shuffle(questions[subject]);

  questionIndex=0;

  renderQuestion();

}


function renderQuestion(){

  if(questionIndex>=quiz.length){

    finishQuiz();

    return;
  }

  answered=false;

  const q=quiz[questionIndex];

  const percent =
    (questionIndex/quiz.length)*100;

  document.getElementById("quizBox").innerHTML=`

    <div class="card">

      <div class="badge">
        Pergunta ${questionIndex+1}
        / ${quiz.length}
      </div>

      <div class="progress">
        <div style="width:${percent}%"></div>
      </div>

      <div class="question">
        ${q[0]}
      </div>

      <div class="answers">

        ${q[1].map(
          (answer,index)=>`

          <button
            class="answer"
            onclick="answerQuestion(${index},this)"
          >
            ${String.fromCharCode(65+index)})
            ${answer}
          </button>

        `
        ).join("")}

      </div>

      <p id="feedback"></p>

    </div>
  `;

}


function answerQuestion(index,button){

  if(answered)return;

  answered=true;

  const q=quiz[questionIndex];

  const buttons=
    document.querySelectorAll(".answer");

  buttons[q[2]]
    .classList
    .add("correct");

  state.total++;

  if(index===q[2]){

    state.correct++;
    state.xp+=10;

    document.getElementById(
      "feedback"
    ).innerHTML=
      "✅ Correto! +10 XP";

  }else{

    button.classList.add("wrong");

    document.getElementById(
      "feedback"
    ).innerHTML=
      "❌ Incorreto! A resposta correta está assinalada.";

  }

  save();

  setTimeout(()=>{

    questionIndex++;

    renderQuestion();

  },1000);

}


function finishQuiz(){

  state.streak =
    Math.max(1,state.streak);

  save();

  document.getElementById(
    "quizBox"
  ).innerHTML=`

    <div class="card"
         style="text-align:center">

      <div class="score">
        🎉
      </div>

      <h2>
        Desafio terminado!
      </h2>

      <p>
        Continua a estudar para ganhar mais XP.
      </p>

      <button
        class="primary"
        onclick="startQuiz()"
      >
        Novo desafio
      </button>

    </div>
  `;

}


/* =========================
   STUDY AI
========================= */

function askAI(){

  const input=
    document.getElementById("chatInput");

  const text=
    input.value.trim();

  if(!text)return;

  const chat=
    document.getElementById("chat");

  chat.innerHTML+=`

    <div class="msg me">
      ${escapeHTML(text)}
    </div>
  `;

  const response=
    aiResponse(text);

  setTimeout(()=>{

    chat.innerHTML+=`

      <div class="msg bot">
        ${response}
      </div>
    `;

    chat.scrollTop=
      chat.scrollHeight;

  },300);

  input.value="";

}


function escapeHTML(text){

  return text
    .replace(/&/g,"&amp;")
    .replace(/</g,"&lt;")
    .replace(/>/g,"&gt;")
    .replace(/"/g,"&quot;")
    .replace(/'/g,"&#039;");

}


function aiResponse(text){

  const t=
    text.toLowerCase();

  if(
    t.includes("fração") ||
    t.includes("frações")
  ){

    return `
      📚 <b>Frações</b><br><br>

      Uma fração representa partes de um todo.
      <br><br>

      Em <b>3/4</b>:
      <br>
      • 3 = numerador
      <br>
      • 4 = denominador
      <br><br>

      Portanto, 3/4 significa três de quatro partes.
    `;

  }

  if(
    t.includes("oração") ||
    t.includes("temporal")
  ){

    return `
      📚 <b>Oração temporal</b><br><br>

      Uma oração temporal indica
      <b>quando</b> acontece uma ação.
      <br><br>

      Exemplo:
      <i>"Quando cheguei, ele saiu."</i>
      <br><br>

      "Quando cheguei" indica o momento
      em que ele saiu.
    `;

  }

  if(t.includes("fotossíntese")){

    return `
      🌱 <b>Fotossíntese</b><br><br>

      É o processo através do qual as plantas
      produzem matéria orgânica utilizando
      luz, água e dióxido de carbono.
      <br><br>

      Durante o processo é libertado oxigénio.
    `;

  }

  if(
    t.includes("água") ||
    t.includes("h2o")
  ){

    return `
      💧 A fórmula química da água é
      <b>H₂O</b>.
      <br><br>

      Cada molécula possui dois átomos
      de hidrogénio e um átomo de oxigénio.
    `;

  }

  if(t.includes("equação")){

    return `
      ➗ Numa equação, tenta deixar
      a incógnita sozinha.
      <br><br>

      Exemplo:
      <b>x + 5 = 10</b>
      <br>
      x = 10 - 5
      <br>
      <b>x = 5</b>
    `;

  }

  if(
    t.includes("capital") &&
    t.includes("portugal")
  ){

    return `
      🇵🇹 A capital de Portugal é
      <b>Lisboa</b>.
    `;

  }

  return `
    🤖 Posso ajudar-te a estudar!
    <br><br>

    Experimenta perguntar:
    <br>
    • Explica-me as frações
    <br>
    • O que é uma oração temporal?
    <br>
    • O que é a fotossíntese?
    <br>
    • Como resolvo uma equação?
  `;

}


/* =========================
   PREMIUM
========================= */

function premiumMessage(){

  alert(
    "O Premium está preparado na interface. Para cobrar pagamentos reais é necessário ligar um sistema de pagamentos."
  );

}


/* =========================
   MÚSICA
========================= */

let audioContext=null;
let oscillator=null;

function playMusic(){

  try{

    audioContext =
      new (
        window.AudioContext ||
        window.webkitAudioContext
      )();

    oscillator =
      audioContext.createOscillator();

    const gain=
      audioContext.createGain();

    oscillator.frequency.value=220;

    gain.gain.value=.03;

    oscillator.connect(gain);

    gain.connect(
      audioContext.destination
    );

    oscillator.start();

    document.getElementById(
      "musicStatus"
    ).textContent=
      "🎵 Música de estudo ligada.";

  }catch(e){

    document.getElementById(
      "musicStatus"
    ).textContent=
      "Não foi possível iniciar o áudio.";

  }

}


function stopMusic(){

  if(oscillator){

    oscillator.stop();

    oscillator=null;

  }

  document.getElementById(
    "musicStatus"
  ).textContent=
    "⏹️ Música parada.";

}


/* =========================
   DEFINIÇÕES
========================= */

function saveName(){

  state.name=
    document
      .getElementById("userName")
      .value
      .trim();

  save();

}


function changeLanguage(){

  const language=
    document.getElementById("language").value;

  if(language!=="pt"){

    alert(
      "A tradução completa deste idioma será adicionada numa versão futura."
    );

    document.getElementById(
      "language"
    ).value="pt";

  }

}


function resetProgress(){

  if(
    confirm(
      "Queres mesmo apagar todo o teu progresso?"
    )
  ){

    state.xp=0;
    state.correct=0;
    state.total=0;
    state.streak=0;

    save();

  }

}


/* =========================
   ARRANQUE
========================= */

updateUI();

</script>

</body>
</html>
