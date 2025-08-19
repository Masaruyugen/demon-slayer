<!doctype html>
<html lang="fr">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover" />
  <title>Demon Yugen — Fan Site Demon Slayer</title>
  <meta name="description" content="Fan site Demon Slayer style Yugen/GMod : persos, galeries, effets néon & glitch, infos, et liens. Non-officiel." />

  <!-- SEO & Réseaux -->
  <meta property="og:title" content="Demon Yugen — Fan Site Demon Slayer" />
  <meta property="og:description" content="Site fan non-officiel — style Yugen/GMod, animations néon, fiches persos et galerie." />
  <meta property="og:type" content="website" />
  <meta property="og:image" content="assets/og-image.jpg" />
  <meta name="theme-color" content="#0ef0a8" />

  <!-- Polices (performantes) -->
  <link rel="preconnect" href="https://fonts.googleapis.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Archivo:wght@400;600;800&family=JetBrains+Mono:wght@400;700&display=swap" rel="stylesheet">

  <!-- CSS -->
  <link rel="stylesheet" href="styles.css" />

  <!-- Favicon (optionnel) -->
  <link rel="icon" href="assets/favicon.png" type="image/png" />

  <!-- Préchargements images légères (éviter lourdes sur mobile) -->
  <link rel="preload" as="image" href="assets/hero.webp" imagesrcset="assets/hero.webp 1200w" />
</head>
<body>
  <!-- Effet scanlines -->
  <div class="scanlines" aria-hidden="true"></div>

  <!-- Header / Navigation -->
  <header class="site-header">
    <a class="brand" href="#">
      <svg viewBox="0 0 64 64" class="brand-logo" aria-hidden="true">
        <circle cx="32" cy="32" r="28" fill="none" stroke="currentColor" stroke-width="3"/>
        <path d="M18 40 L32 16 L46 40 Z" fill="currentColor" />
      </svg>
      <span class="brand-text">Demon <em>Yugen</em></span>
    </a>
    <button class="nav-toggle" aria-expanded="false" aria-controls="nav">☰</button>
    <nav id="nav" class="nav">
      <a href="#accueil">Accueil</a>
      <a href="#persos">Personnages</a>
      <a href="#galerie">Galerie</a>
      <a href="#wiki">Wiki</a>
      <a href="#contact">Contact</a>
    </nav>
  </header>

  <!-- Hero -->
  <main id="accueil">
    <section class="hero parallax">
      <div class="hero-bg" role="img" aria-label="Fond stylisé Demon Slayer"></div>
      <div class="hero-overlay"></div>
      <div class="hero-content">
        <h1 class="glitch" data-text="Respiration — Yugen">Respiration — Yugen</h1>
        <p class="subtitle">Fan site non-officiel inspiré par l’esthétique <strong>Yugen / GMod</strong> : néons, glitch, et intensité.</p>
        <div class="cta-wrap">
          <a class="btn primary" href="#persos">Explorer les personnages</a>
          <a class="btn ghost" href="#galerie">Voir la galerie</a>
        </div>
      </div>
    </section>

    <!-- Section Persos -->
    <section id="persos" class="section">
      <h2>Personnages</h2>
      <p class="section-lead">Sélection stylisée (images placeholders). Remplace avec tes visuels <code>.webp</code> compressés.</p>

      <div class="cards">
        <!-- Carte exemple -->
        <article class="card">
          <img loading="lazy" src="assets/tanjiro.webp" width="420" height="560" alt="Tanjiro Kamado" />
          <div class="card-body">
            <h3>Tanjiro Kamado</h3>
            <p>Respiration de l’Eau • Volonté inflexible • Checkboard haori</p>
            <div class="chips">
              <span class="chip chip-water">Eau</span>
              <span class="chip">Protagoniste</span>
            </div>
          </div>
        </article>

        <article class="card">
          <img loading="lazy" src="assets/nezuko.webp" width="420" height="560" alt="Nezuko Kamado" />
          <div class="card-body">
            <h3>Nezuko Kamado</h3>
            <p>Démon protecteur • Force explosive • Bandeau en bambou</p>
            <div class="chips">
              <span class="chip chip-flame">Flamme</span>
              <span class="chip">Démon</span>
            </div>
          </div>
        </article>

        <article class="card">
          <img loading="lazy" src="assets/zenitsu.webp" width="420" height="560" alt="Zenitsu Agatsuma" />
          <div class="card-body">
            <h3>Zenitsu Agatsuma</h3>
            <p>Respiration de la Foudre • Rapidité fulgurante • Kimono jaune</p>
            <div class="chips">
              <span class="chip chip-thunder">Foudre</span>
              <span class="chip">Épéiste</span>
            </div>
          </div>
        </article>
      </div>
    </section>

    <!-- Galerie -->
    <section id="galerie" class="section section-dark">
      <h2>Galerie</h2>
      <p class="section-lead">Miniatures optimisées — clic pour ouvrir le viewer lightbox.</p>

      <div class="grid">
        <a class="grid-item" href="assets/wall1.webp" data-lightbox>
          <img loading="lazy" src="assets/wall1_small.webp" alt="Wallpaper néon 1" width="320" height="180" />
        </a>
        <a class="grid-item" href="assets/wall2.webp" data-lightbox>
          <img loading="lazy" src="assets/wall2_small.webp" alt="Wallpaper néon 2" width="320" height="180" />
        </a>
        <a class="grid-item" href="assets/wall3.webp" data-lightbox>
          <img loading="lazy" src="assets/wall3_small.webp" alt="Wallpaper néon 3" width="320" height="180" />
        </a>
        <a class="grid-item" href="assets/wall4.webp" data-lightbox>
          <img loading="lazy" src="assets/wall4_small.webp" alt="Wallpaper néon 4" width="320" height="180" />
        </a>
      </div>
      <div id="lightbox" class="lightbox" aria-hidden="true" role="dialog" aria-label="Visionneuse">
        <button class="lightbox-close" aria-label="Fermer">×</button>
        <img id="lightbox-img" alt="" />
      </div>
    </section>

    <!-- Mini “Wiki” -->
    <section id="wiki" class="section">
      <h2>Wiki express</h2>
      <div class="timeline">
        <div class="t-item">
          <time>Ère Taishō</time>
          <p>Conflit centenaire entre pourfendeurs et démons. Esthétique traditionnelle + teintes néon.</p>
        </div>
        <div class="t-item">
          <time>Respirations</time>
          <p>Techniques de souffle : Eau, Foudre, Flamme, Bête, etc. Chaque carte ci‑dessus les met en code couleur.</p>
        </div>
        <div class="t-item">
          <time>Esthétique Yugen/GMod</time>
          <p>Vibes synthwave, glitchs, UI minimaliste + lueurs cyan/magenta.</p>
        </div>
      </div>
    </section>

    <!-- Contact -->
    <section id="contact" class="section section-dark">
      <h2>Contact</h2>
      <form class="contact" name="contact" netlify>
        <label>Ton pseudo
          <input name="name" required autocomplete="nickname"/>
        </label>
        <label>Ton e‑mail
          <input type="email" name="email" required autocomplete="email"/>
        </label>
        <label>Message
          <textarea name="message" rows="4" required></textarea>
        </label>
        <button class="btn primary" type="submit">Envoyer</button>
        <p class="form-note">Protège tes données • Pas d’info sensible</p>
      </form>
    </section>
  </main>

  <footer class="site-footer">
    <p>© <span id="year"></span> Demon Yugen — Fan site non‑officiel. Demon Slayer appartient à ses ayants droit.</p>
    <nav class="footer-nav">
      <a href="#accueil">Haut</a> •
      <a href="#persos">Persos</a> •
      <a href="#galerie">Galerie</a> •
      <a href="#wiki">Wiki</a>
    </nav>
  </footer>

  <script src="app.js" defer></script>
</body>
</html>
