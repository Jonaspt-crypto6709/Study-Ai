```html
<!DOCTYPE html>
<html lang="pt-PT">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="theme-color" content="#ff7900">
  <meta name="description" content="Study AI — aprende, joga e estuda gratuitamente.">

  <title>Study AI</title>

  <style>
    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
      font-family: Arial, sans-serif;
    }

    body {
      background: #0b0b0b;
      color: white;
      min-height: 100vh;
    }

    header {
      background: linear-gradient(135deg, #ff7900, #ff4500);
      padding: 22px;
      display: flex;
      justify-content: space-between;
      align-items: center;
    }

    .logo {
      font-size: 28px;
      font-weight: bold;
    }

    .free {
      background: #111;
      padding: 8px 14px;
      border-radius: 20px;
      font-size: 13px;
    }

    main {
      max-width: 1000px;
      margin: auto;
      padding: 25px;
    }

    .welcome {
      margin-bottom: 25px;
    }

    .welcome h1 {
      font-size: 32px;
      margin-bottom: 8px;
    }

    .welcome p {
      color: #bbb;
    }

    .grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
      gap: 18px;
    }

    .card {
      background: #171717;
      border: 1px solid #292929;
      border-radius: 18px;
      padding: 22px;
      cursor: pointer;
      transition: 0.2s;
    }

    .card:hover {
      transform: translateY(-4px);
      border-color: #ff7900;
    }

    .icon {
      font-size: 35px;
      margin-bottom: 12px;
    }

    .card h2 {
      margin-bottom: 8px;
    }

    .card p {
      color: #aaa;
      font-size: 14px;
      line-height: 1.5;
    }

    button {
      border: none;
      background: #ff7900;
      color: white;
      padding: 12px 18px;
      border-radius: 12px;
      cursor: pointer;
      font-weight: bold;
      margin-top: 15px;
    }

    button:hover {
      background: #ff8c26;
    }

    .screen {
      display: none;
      background: #151515;
      border-radius: 18px;
      padding: 25px;
      margin-top: 20px;
    }

    .screen.active {
      display: block;
    }

    .back {
      background: #292929;
      margin-bottom: 20px;
    }

    input, select {
      width: 100%;
      padding: 13px;
      margin-top: 10px;
      background: #222;
      color: white;
      border: 1px solid #444;
      border-radius: 10px;
    }

    .question {
      font-size: 22px;
      margin: 20px 0;
    }

    footer {
      text-align: center;
      color: #777;
      padding: 35px 20px;
      font-size: 13px;
    }
  </style>
</head>

<body>

<header>
  <div class="logo">🟠 Study AI</div>
  <div class="free">100% GRATUITO</div>
</header>

<main>

  <section class="welcome">
    <h1>Olá! 👋</h1>
    <p>Aprende, pratica e diverte-te com o Study AI.</p>
  </section>

  <div class="grid">

    <div class="card" onclick="openScreen('study')">
      <div class="icon">📚</div>
      <h2>Estudar</h2>
      <p>Escolhe a disciplina e o teu ano de escolaridade.</p>
    </div>

    <div class="card" onclick="openScreen('challenge')">
      <div class="icon">🎮</div>
      <h2>Desafios</h2>
      <p>Responde a perguntas e testa os teus conhecimentos.</p>
    </div>

    <div class="card" onclick="openScreen('ai')">
      <div class="icon">🤖</div>
      <h2>Study AI</h2>
      <p>Faz perguntas e recebe ajuda para estudar.</p>
    </div>

    <div class="card" onclick="openScreen('music')">
      <div class="icon">🎵</div>
      <h2>Música</h2>
      <p>Estuda com música de fundo.</p>
    </div>

    <div class="card" onclick="openScreen('settings')">
      <div class="icon">⚙️</div>
      <h2>Definições</h2>
      <p>Personaliza o Study AI.</p>
    </div>

  </div>

  <section id="study" class="screen">
    <button class="back" onclick="closeScreens()">← Voltar</button>
    <h2>📚 Estudar</h2>

    <label>Ano de escolaridade</label>
    <select>
      <option>1.º ano</option>
      <option>2.º ano</option>
      <option>3.º ano</option>
      <option>4.º ano</option>
      <option>5.º ano</option>
      <option>6.º ano</option>
      <option selected>8.º ano</option>
      <option>9.º ano</option>
      <option>10.º ano</option>
      <option>11.º ano</option>
      <option>12.º ano</option>
    </select>

    <label>Disciplina</label>
    <select>
      <option>Matemática</option>
      <option>Português</option>
      <option>Ciências</option>
      <option>Físico-Química</option>
      <option>História</option>
      <option>Geografia</option>
      <option>Inglês</option>
      <option>Espanhol</option>
    </select>

    <button onclick="alert('Vamos começar a estudar! 📚')">
      Começar
    </button>
  </section>

  <section id="challenge" class="screen">
    <button class="back" onclick="closeScreens()">← Voltar</button>

    <h2>🎮 Desafio</h2>

    <div class="question">
      Quanto é 8 × 7?
    </div>

    <button onclick="alert('✅ Correto!')">56</button>
    <button onclick="alert('❌ Tenta novamente!')">54</button>
    <button onclick="alert('❌ Tenta novamente!')">64</button>
  </section>

  <section id="ai" class="screen">
    <button class="back" onclick="closeScreens()">← Voltar</button>

    <h2>🤖 Study AI</h2>

    <p style="margin-top:10px;color:#aaa;">
      Escreve uma pergunta sobre a matéria que estás a estudar.
    </p>

    <input id="questionInput" placeholder="Ex.: Explica-me as frações...">

    <button onclick="askAI()">Perguntar</button>

    <p id="answer" style="margin-top:20px;"></p>
  </section>

  <section id="music" class="screen">
    <button class="back" onclick="closeScreens()">← Voltar</button>

    <h2>🎵 Música para estudar</h2>

    <p style="margin-top:10px;color:#aaa;">
      Música para te ajudar a concentrar.
    </p>

    <button onclick="alert('🎵 Música iniciada!')">
      ▶️ Começar música
    </button>
  </section>

  <section id="settings" class="screen">
    <button class="back" onclick="closeScreens()">← Voltar</button>

    <h2>⚙️ Definições</h2>

    <label>Idioma</label>
    <select>
      <option>Português (Portugal)</option>
      <option>English</option>
      <option>Español</option>
      <option>Français</option>
    </select>

    <p style="margin-top:25px;color:#aaa;">
      💰 O Study AI é totalmente gratuito.
    </p>
  </section>

</main>

<footer>
  Study AI © 2026 — Estudar pode ser divertido 🚀
</footer>

<script>
  function openScreen(id) {
    closeScreens();
    document.getElementById(id).classList.add("active");
    window.scrollTo({ top: 0, behavior: "smooth" });
  }

  function closeScreens() {
    document.querySelectorAll(".screen").forEach(screen => {
      screen.classList.remove("active");
    });
  }

  function askAI() {
    const question = document.getElementById("questionInput").value;
    const answer = document.getElementById("answer");

    if (!question.trim()) {
      answer.innerText = "Escreve primeiro uma pergunta. 🙂";
      return;
    }

    answer.innerText =
      "🤖 Recebi a tua pergunta! A IA do Study AI será ligada ao sistema de inteligência artificial para responder de forma completa.";
  }
</script>

</body>
</html>
```
