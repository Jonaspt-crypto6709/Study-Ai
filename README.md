<!DOCTYPE html>
<html lang="pt-PT">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="theme-color" content="#ff7900">
  <title>Study AI</title>

  <style>
    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
      font-family: Arial, sans-serif;
    }

    body {
      background: #111;
      color: white;
      min-height: 100vh;
    }

    header {
      background: linear-gradient(135deg, #ff7900, #ff4d00);
      padding: 20px;
      text-align: center;
      box-shadow: 0 4px 15px #000;
    }

    header h1 {
      font-size: 32px;
      font-weight: 900;
    }

    header p {
      margin-top: 5px;
    }

    nav {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      gap: 8px;
      padding: 12px;
      background: #181818;
      position: sticky;
      top: 0;
      z-index: 10;
    }

    nav button {
      border: none;
      border-radius: 12px;
      padding: 10px 14px;
      background: #292929;
      color: white;
      cursor: pointer;
      font-weight: bold;
    }

    nav button:hover {
      background: #ff7900;
    }

    .container {
      max-width: 1100px;
      margin: auto;
      padding: 25px;
    }

    .page {
      display: none;
    }

    .page.active {
      display: block;
    }

    .hero {
      text-align: center;
      padding: 45px 20px;
    }

    .hero h2 {
      font-size: 42px;
      margin-bottom: 12px;
    }

    .orange {
      color: #ff7900;
    }

    .card {
      background: #1d1d1d;
      border: 1px solid #333;
      border-radius: 18px;
      padding: 22px;
      margin: 15px 0;
      box-shadow: 0 5px 20px #0005;
    }

    .grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(210px, 1fr));
      gap: 15px;
    }

    button.primary {
      background: #ff7900;
      color: white;
      border: none;
      padding: 13px 20px;
      border-radius: 12px;
      cursor: pointer;
      font-weight: bold;
      margin-top: 10px;
    }

    button.primary:hover {
      background: #ff5c00;
    }

    select,
    input,
    textarea {
      width: 100%;
      padding: 13px;
      margin-top: 8px;
      border-radius: 10px;
      border: 1px solid #444;
      background: #111;
      color: white;
    }

    .stat {
      text-align: center;
      background: #222;
      padding: 20px;
      border-radius: 15px;
    }

    .stat strong {
      display: block;
      font-size: 30px;
      color: #ff7900;
    }

    .answer {
      display: block;
      width: 100%;
      padding: 14px;
      margin: 8px 0;
      background: #292929;
      color: white;
      border: 1px solid #444;
      border-radius: 10px;
      text-align: left;
      cursor: pointer;
    }

    .answer:hover {
      background: #ff7900;
    }

    .correct {
      background: #16833a !important;
    }

    .wrong {
      background: #a51d2d !important;
    }

    .premium {
      border: 2px solid #ff7900;
    }

    footer {
      text-align: center;
      padding: 30px;
      color: #aaa;
    }

    @media (max-width: 600px) {
      .hero h2 {
        font-size: 30px;
      }
    }
  </style>
</head>

<body>

<header>
  <h1>🧠 Study AI</h1>
  <p>Estuda. Joga. Aprende.</p>
</header>

<nav>
  <button onclick="showPage('home')">🏠 Início</button>
  <button onclick="showPage('challenges')">🎮 Desafios</button>
  <button onclick="showPage('ai')">🤖 Study AI</button>
  <button onclick="showPage('progress')">📊 Progresso</button>
  <button onclick="showPage('premium')">⭐ Premium</button>
  <button onclick="showPage('settings')">⚙️ Definições</button>
</nav>

<main class="container">

  <!-- INÍCIO -->
  <section id="home" class="page active">

    <div class="hero">
      <h2>Aprende com o <span class="orange">Study AI</span></h2>
      <p>Transforma o estudo num jogo.</p>
      <button class="primary" onclick="showPage('challenges')">
        Começar a estudar 🚀
      </button>
    </div>

    <div class="grid">

      <div class="card">
        <h3>🎮 Desafios</h3>
        <p>Responde a perguntas e ganha XP.</p>
      </div>

      <div class="card">
        <h3>🤖 Study AI</h3>
        <p>Faz perguntas ao teu assistente de estudo.</p>
      </div>

      <div class="card">
        <h3>📈 Progresso</h3>
        <p>Acompanha a tua evolução.</p>
      </div>

      <div class="card">
        <h3>⭐ Premium</h3>
        <p>Desbloqueia funcionalidades extra.</p>
      </div>

    </div>

  </section>

  <!-- DESAFIOS -->
  <section id="challenges" class="page">

    <h2>🎮 Desafios</h2>

    <div class="card">

      <label>Ano de escolaridade</label>

      <select id="year">
        <option value="1">1.º ano</option>
        <option value="2">2.º ano</option>
        <option value="3">3.º ano</option>
        <option value="4">4.º ano</option>
        <option value="5">5.º ano</option>
        <option value="6">6.º ano</option>
        <option value="7">7.º ano</option>
        <option value="8" selected>8.º ano</option>
        <option value="9">9.º ano</option>
        <option value="10">10.º ano</option>
        <option value="11">11.º ano</option>
        <option value="12">12.º ano</option>
      </select>

      <label>Disciplina</label>

      <select id="subject">
        <option>Matemática</option>
        <option>Português</option>
        <option>Ciências</option>
        <option>História</option>
        <option>Geografia</option>
        <option>Inglês</option>
      </select>

      <button class="primary" onclick="startQuiz()">
        Começar desafio
      </button>

    </div>

    <div id="quiz" class="card" style="display:none;"></div>

  </section>

  <!-- AI -->
  <section id="ai" class="page">

    <h2>🤖 Study AI</h2>

    <div class="card">

      <p>
        Faz uma pergunta sobre uma matéria e o Study AI tenta ajudar.
      </p>

      <textarea
        id="aiQuestion"
        rows="5"
        placeholder="Ex.: Explica-me o que é uma fração."
      ></textarea>

      <button class="primary" onclick="askAI()">
        Perguntar à IA 🤖
      </button>

      <div id="aiAnswer" style="margin-top:20px;"></div>

    </div>

  </section>

  <!-- PROGRESSO -->
  <section id="progress" class="page">

    <h2>📊 O teu progresso</h2>

    <div class="grid">

      <div class="stat">
        <strong id="xp">0</strong>
        XP
      </div>

      <div class="stat">
        <strong id="correct">0</strong>
        Respostas certas
      </div>

      <div class="stat">
        <strong id="total">0</strong>
        Respostas
      </div>

      <div class="stat">
        <strong id="streak">0</strong>
        Sequência 🔥
      </div>

    </div>

  </section>

  <!-- PREMIUM -->
  <section id="premium" class="page">

    <h2>⭐ Study AI Premium</h2>

    <div class="card premium">

      <h3>5,99 € / mês</h3>

      <p>ou</p>

      <h3>16,99 € / ano</h3>

      <br>

      <p>⭐ Música para estudar</p>
      <p>⭐ Mais funcionalidades de IA</p>
      <p>⭐ Conteúdos exclusivos</p>
      <p>⭐ Experiência sem limitações</p>

      <button class="primary" onclick="premiumAlert()">
        Tornar-me Premium
      </button>

    </div>

  </section>

  <!-- DEFINIÇÕES -->
  <section id="settings" class="page">

    <h2>⚙️ Definições</h2>

    <div class="card">

      <label>Nome</label>
      <input id="name" placeholder="O teu nome">

      <label>Idioma</label>

      <select id="language">
        <option value="pt">Português</option>
        <option value="en">English</option>
        <option value="es">Español</option>
        <option value="fr">Français</option>
        <option value="de">Deutsch</option>
        <option value="it">Italiano</option>
      </select>

      <button class="primary" onclick="saveSettings()">
        Guardar
      </button>

    </div>

  </section>

</main>

<footer>
  <p>Study AI © 2026</p>
</footer>

<script>

const questions = {

  "Matemática": [
    {
      q: "Quanto é 7 × 8?",
      a: ["54", "56", "64", "48"],
      correct: 1
    },
    {
      q: "Quanto é 100 ÷ 4?",
      a: ["20", "25", "30", "40"],
      correct: 1
    },
    {
      q: "Quanto é 2⁵?",
      a: ["10", "16", "25", "32"],
      correct: 3
    }
  ],

  "Português": [
    {
      q: "Qual é o sujeito da frase: 'O João estuda matemática.'?",
      a: ["estuda", "matemática", "O João", "João estuda"],
      correct: 2
    },
    {
      q: "Qual destas palavras é um verbo?",
      a: ["casa", "correr", "bonito", "rapidamente"],
      correct: 1
    },
    {
      q: "Qual é o plural de 'animal'?",
      a: ["animals", "animales", "animais", "animalis"],
      correct: 2
    }
  ],

  "Ciências": [
    {
      q: "Qual é o planeta conhecido como planeta vermelho?",
      a: ["Marte", "Júpiter", "Vénus", "Saturno"],
      correct: 0
    },
    {
      q: "Qual é a fórmula química da água?",
      a: ["CO₂", "H₂O", "O₂", "NaCl"],
      correct: 1
    },
    {
      q: "Qual órgão bombeia o sangue?",
      a: ["Pulmão", "Cérebro", "Coração", "Estômago"],
      correct: 2
    }
  ],

  "História": [
    {
      q: "Em que ano ocorreu a Revolução Francesa?",
      a: ["1492", "1789", "1914", "1640"],
      correct: 1
    },
    {
      q: "Quem foi o primeiro rei de Portugal?",
      a: ["D. Afonso Henriques", "D. João I", "D. Manuel I", "D. Sebastião"],
      correct: 0
    },
    {
      q: "Em que ano ocorreu a Restauração da Independência?",
      a: ["1640", "1500", "1820", "1910"],
      correct: 0
    }
  ],

  "Geografia": [
    {
      q: "Qual é a capital de Portugal?",
      a: ["Porto", "Coimbra", "Lisboa", "Braga"],
      correct: 2
    },
    {
      q: "Qual é o maior oceano do planeta?",
      a: ["Atlântico", "Índico", "Pacífico", "Ártico"],
      correct: 2
    },
    {
      q: "Qual é o maior continente?",
      a: ["Europa", "Ásia", "África", "América"],
      correct: 1
    }
  ],

  "Inglês": [
    {
      q: "Como se diz 'casa' em inglês?",
      a: ["Car", "House", "School", "Book"],
      correct: 1
    },
    {
      q: "Como se diz 'água' em inglês?",
      a: ["Water", "Fire", "Food", "Tree"],
      correct: 0
    },
    {
      q: "Qual é o passado de 'go'?",
      a: ["Goed", "Gone", "Went", "Going"],
      correct: 2
    }
  ]

};

let currentQuestions = [];
let currentIndex = 0;

let stats = JSON.parse(
  localStorage.getItem("studyAIStats")
) || {
  xp: 0,
  correct: 0,
  total: 0,
  streak: 0
};

function saveStats() {

  localStorage.setItem(
    "studyAIStats",
    JSON.stringify(stats)
  );

  updateStats();
}

function updateStats() {

  document.getElementById("xp").textContent = stats.xp;
  document.getElementById("correct").textContent = stats.correct;
  document.getElementById("total").textContent = stats.total;
  document.getElementById("streak").textContent = stats.streak;

}

function showPage(id) {

  document.querySelectorAll(".page").forEach(
    page => page.classList.remove("active")
  );

  document.getElementById(id).classList.add("active");

  updateStats();

}

function startQuiz() {

  const subject =
    document.getElementById("subject").value;

  currentQuestions =
    questions[subject] || [];

  currentIndex = 0;

  showQuestion();

}

function showQuestion() {

  const quiz =
    document.getElementById("quiz");

  quiz.style.display = "block";

  if (currentIndex >= currentQuestions.length) {

    quiz.innerHTML = `
      <h2>🎉 Desafio terminado!</h2>
      <p>Boa! Continua a estudar.</p>
      <button class="primary" onclick="startQuiz()">
        Jogar novamente
      </button>
    `;

    return;
  }

  const question =
    currentQuestions[currentIndex];

  let html = `
    <h3>${question.q}</h3>
    <br>
  `;

  question.a.forEach((answer, index) => {

    html += `
      <button
        class="answer"
        onclick="answerQuestion(${index})"
      >
        ${answer}
      </button>
    `;

  });

  quiz.innerHTML = html;

}

function answerQuestion(index) {

  const question =
    currentQuestions[currentIndex];

  const buttons =
    document.querySelectorAll(".answer");

  buttons.forEach(
    button => button.disabled = true
  );

  stats.total++;

  if (index === question.correct) {

    stats.correct++;
    stats.xp += 10;
    stats.streak++;

    buttons[index].classList.add("correct");

  } else {

    stats.streak = 0;

    buttons[index].classList.add("wrong");

    buttons[question.correct]
      .classList.add("correct");

  }

  saveStats();

  setTimeout(() => {

    currentIndex++;
    showQuestion();

  }, 900);

}

function askAI() {

  const question =
    document.getElementById("aiQuestion")
      .value
      .toLowerCase();

  const answer =
    document.getElementById("aiAnswer");

  if (!question.trim()) {

    answer.innerHTML =
      "<p>Escreve primeiro uma pergunta. 🙂</p>";

    return;

  }

  let response =
    "Posso ajudar-te a estudar! Tenta escrever a pergunta de forma mais específica.";

  if (question.includes("fração")) {

    response =
      "Uma fração representa uma parte de um todo. " +
      "O número de cima chama-se numerador e o número de baixo chama-se denominador.";

  } else if (question.includes("água")) {

    response =
      "A água é uma substância química formada por dois átomos de hidrogénio e um de oxigénio: H₂O.";

  } else if (question.includes("fotossíntese")) {

    response =
      "A fotossíntese é o processo através do qual as plantas produzem matéria orgânica usando luz, água e dióxido de carbono.";

  } else if (question.includes("revolução francesa")) {

    response =
      "A Revolução Francesa começou em 1789 e provocou grandes mudanças políticas e sociais em França.";

  } else if (question.includes("sujeito")) {

    response =
      "O sujeito é o elemento da frase sobre o qual se diz alguma coisa. Por exemplo: 'O João estuda.' — 'O João' é o sujeito.";

  }

  answer.innerHTML = `
    <div class="card">
      <h3>🤖 Study AI</h3>
      <p>${response}</p>
    </div>
  `;

}

function premiumAlert() {

  alert(
    "O Premium está preparado no protótipo. " +
    "Para receber pagamentos reais é necessário ligar um sistema de pagamentos."
  );

}

function saveSettings() {

  const name =
    document.getElementById("name").value;

  const language =
    document.getElementById("language").value;

  localStorage.setItem("studyAIName", name);
  localStorage.setItem("studyAILanguage", language);

  alert("Definições guardadas! ✅");

}

function loadSettings() {

  document.getElementById("name").value =
    localStorage.getItem("studyAIName") || "";

  document.getElementById("language").value =
    localStorage.getItem("studyAILanguage") || "pt";

}

updateStats();
loadSettings();

</script>

</body>
</html>
