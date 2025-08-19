/* --- Variables Thème --- */
:root{
  --bg:#0b0f14;
  --bg-soft:#0f1620;
  --fg:#e6f3ee;
  --muted:#99b5ac;
  --primary:#0ef0a8;      /* cyan néon */
  --secondary:#ff3ea5;    /* magenta néon */
  --accent:#22d3ee;       /* cyan clair */
  --card:#101820;
  --ring:0 0 0 2px color-mix(in oklab, var(--primary), transparent 70%);
  --shadow:0 10px 30px rgba(0,0,0,.4);
  --radius:14px;
}

/* Reset simple & accessibilité */
*{box-sizing:border-box}
html,body{height:100%}
body{
  margin:0;
  font-family:Archivo,system-ui,-apple-system,Segoe UI,Roboto,Ubuntu,"Helvetica Neue",Arial;
  color:var(--fg);
  background:radial-gradient(1200px 600px at 70% -20%,rgba(14,240,168,.15),transparent 60%),linear-gradient(#080b10,#0b0f14);
  line-height:1.6;
  overflow-x:hidden;
}
img{max-width:100%;display:block}
a{color:var(--primary);text-decoration:none}
a:focus-visible, button:focus-visible, .card:focus-within{outline: none; box-shadow: var(--ring); border-radius:12px}

/* Effet scanlines */
.scanlines{
  position:fixed;inset:0;pointer-events:none;z-index:9999;
  background:repeating-linear-gradient(180deg,rgba(255,255,255,.02),rgba(255,255,255,.02) 1px,transparent 1px,transparent 3px);
  mix-blend-mode:overlay;
}

/* Header */
.site-header{
  position:sticky;top:0;z-index:50;
  display:flex;align-items:center;justify-content:space-between;
  padding:12px 20px;background:rgba(8,12,18,.6);backdrop-filter:blur(10px);
  border-bottom:1px solid rgba(255,255,255,.06)
}
.brand{display:flex;align-items:center;gap:12px;color:var(--fg);font-weight:800;letter-spacing:.5px}
.brand-logo{width:28px;height:28px;color:var(--primary);filter:drop-shadow(0 0 6px color-mix(in oklab, var(--primary), transparent 30%))}
.brand-text em{color:var(--secondary);font-style:normal}
.nav{display:flex;gap:18px}
.nav a{padding:8px 10px;border-radius:10px;color:var(--fg)}
.nav a:hover{background:rgba(255,255,255,.06)}
.nav-toggle{display:none;background:none;border:none;color:var(--fg);font-size:24px}

/* Hero */
.hero{
  position:relative;min-height:76vh;display:grid;place-items:center;text-align:center;overflow:hidden
}
.hero-bg{
  position:absolute;inset:-2rem;background-image:url("assets/hero.webp");
  background-size:cover;background-position:center;
  transform:translateZ(0) scale(1.05);filter:contrast(1.05) saturate(1.1) brightness(.9);
}
.hero-overlay{
  position:absolute;inset:0;background:
    radial-gradient(1000px 500px at 20% -10%, rgba(255,62,165,.25), transparent 60%),
    radial-gradient(900px 600px at 80% 120%, rgba(14,240,168,.18), transparent 60%),
    linear-gradient(180deg, rgba(0,0,0,.35), rgba(0,0,0,.75));
}
.hero-content{position:relative;padding:3rem 1rem;max-width:980px}
h1{font-size:clamp(2.2rem,6vw,5rem);margin:0 0 10px;font-weight:800;letter-spacing:.5px}
.subtitle{color:var(--muted);margin:0 auto 20px;max-width:700px}

/* Glitch */
.glitch{
  position:relative;display:inline-block;text-shadow:
    0 0 14px rgba(14,240,168,.5),
    0 0 24px rgba(255,62,165,.35)
}
.glitch::before,.glitch::after{
  content:attr(data-text);position:absolute;left:0;top:0;clip-path:inset(0 0 0 0);
}
.glitch::before{transform:translate(2px,-2px);color:var(--secondary);mix-blend-mode:screen}
.glitch::after{transform:translate(-2px,2px);color:var(--primary);mix-blend-mode:screen}
@keyframes glitchy{
  0%,100%{clip-path:inset(0 0 0 0)}
  20%{clip-path:inset(10% 0 0 0)}
  40%{clip-path:inset(0 0 20% 0)}
  60%{clip-path:inset(5% 0 15% 0)}
  80%{clip-path:inset(15% 0 5% 0)}
}
.glitch{animation:glitchy 3.5s infinite ease-in-out}

/* CTA */
.cta-wrap{display:flex;gap:12px;justify-content:center;flex-wrap:wrap}
.btn{
  display:inline-flex;align-items:center;gap:8px;padding:12px 18px;border-radius:999px;
  border:1px solid rgba(255,255,255,.12); transition:.2s; font-weight:600;
}
.btn.primary{background:linear-gradient(90deg,var(--primary),#7affe0);color:#02160f;box-shadow:0 0 20px rgba(14,240,168,.35)}
.btn.primary:hover{filter:brightness(1.05) saturate(1.05)}
.btn.ghost{background:rgba(255,255,255,.04);color:var(--fg)}
.btn.ghost:hover{background:rgba(255,255,255,.08)}

/* Sections */
.section{padding:64px 20px;max-width:1200px;margin:0 auto}
.section-dark{background:linear-gradient(180deg,#0b0f14,#0f1620)}
.section h2{font-size:clamp(1.6rem,3.5vw,2.6rem);margin:0 0 6px}
.section-lead{color:var(--muted);margin:0 0 24px}

/* Cards persos */
.cards{display:grid;grid-template-columns:repeat(auto-fit,minmax(240px,1fr));gap:20px}
.card{
  background:linear-gradient(180deg,rgba(255,255,255,.02),rgba(255,255,255,.00));
  border:1px solid rgba(255,255,255,.06);border-radius:var(--radius);overflow:hidden;
  box-shadow:var(--shadow);transform:translateZ(0);
}
.card img{aspect-ratio:3/4;object-fit:cover;filter:saturate(1.05) contrast(1.05)}
.card-body{padding:14px 14px 16px}
.card h3{margin:4px 0 6px}
.card p{margin:0 0 10px;color:var(--muted)}
.chips{display:flex;gap:8px;flex-wrap:wrap}
.chip{
  font-family:"JetBrains Mono",monospace;font-size:.78rem;padding:6px 10px;border-radius:999px;
  border:1px solid rgba(255,255,255,.14);background:rgba(255,255,255,.03)
}
.chip-water{border-color:#22d3ee;color:#22d3ee}
.chip-flame{border-color:#ff7849;color:#ff7849}
.chip-thunder{border-color:#facc15;color:#facc15}

/* Galerie */
.grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(200px,1fr));gap:12px}
.grid-item{
  position:relative;border-radius:12px;overflow:hidden;border:1px solid rgba(255,255,255,.08)
}
.grid-item img{aspect-ratio:16/9;object-fit:cover;transition:transform .25s ease}
.grid-item:hover img{transform:scale(1.05)}

/* Lightbox minimal */
.lightbox{position:fixed;inset:0;background:rgba(0,0,0,.9);display:none;align-items:center;justify-content:center;z-index:100}
.lightbox.open{display:flex}
.lightbox img{max-width:min(92vw,1400px);max-height:86vh;border-radius:10px;box-shadow:0 20px 60px rgba(0,0,0,.6)}
.lightbox-close{
  position:absolute;top:14px;right:16px;font-size:32px;background:none;border:none;color:#fff;cursor:pointer
}

/* Timeline */
.timeline{display:grid;gap:14px}
.t-item{
  background:linear-gradient(180deg,rgba(255,255,255,.02),rgba(255,255,255,.00));
  border:1px solid rgba(255,255,255,.06);border-radius:12px;padding:14px
}
.t-item time{display:inline-block;color:var(--secondary);font-weight:700;margin-bottom:4px}

/* Contact */
.contact{display:grid;gap:12px;max-width:620px}
.contact label{display:grid;gap:6px;font-weight:600}
.contact input,.contact textarea{
  background:#0e141c;border:1px solid rgba(255,255,255,.10);color:var(--fg);
  border-radius:10px;padding:10px 12px;font-size:1rem
}
.contact input:focus,.contact textarea:focus{box-shadow:var(--ring);outline:none}
.form-note{color:var(--muted);font-size:.9rem}

/* Footer */
.site-footer{padding:22px 20px;color:var(--muted);text-align:center;border-top:1px solid rgba(255,255,255,.06)}

/* Nav responsive */
@media (max-width: 860px){
  .nav{position:fixed;right:14px;top:60px;flex-direction:column;background:#0b121a;border:1px solid rgba(255,255,255,.06);padding:10px;border-radius:10px;display:none}
  .nav.open{display:flex}
  .nav-toggle{display:inline-flex}
}

/* Parallaxe douce (performance) */
.parallax .hero-bg{will-change:transform}
