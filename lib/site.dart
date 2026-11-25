import 'dart:convert';

import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr/server.dart' show Document;
import 'package:jaspr_router/jaspr_router.dart';

import 'site_data.dart';

const _htmlEscape = HtmlEscape();
String _e(String value) => _htmlEscape.convert(value);

const _icons = <String, String>{
  'product': 'M12 3 4 7v10l8 4 8-4V7l-8-4Zm0 0v18M4 7l8 4 8-4',
  'architecture': 'M4 19h16M6 16V8m6 8V4m6 12v-6M4 8h4m2-4h4m2 6h4',
  'production': 'M12 3a9 9 0 1 0 9 9M12 7v5l3 2M16 3h5v5',
};

const _contactIcons = <String, String>{
  'email': 'M4 6h16v12H4zM4 7l8 6 8-6',
  'telegram': 'm3 11 18-8-7 18-4-6-4 3-3-7Zm7 4 4-4',
  'instagram': 'M7 2h10a5 5 0 0 1 5 5v10a5 5 0 0 1-5 5H7a5 5 0 0 1-5-5V7a5 5 0 0 1 5-5Zm5 5a5 5 0 1 0 0 10 5 5 0 0 0 0-10Zm6-1h.01',
  'github': 'M9 19c-4.3 1.4-4.3-2.5-6-3m12 6v-3.9c0-1.1.1-1.5-.5-2.1 2.8-.3 5.7-1.4 5.7-6.2 0-1.4-.5-2.5-1.3-3.4.1-.3.6-1.6-.1-3.3 0 0-1.1-.3-3.5 1.3a12.3 12.3 0 0 0-6.3 0C6.6 2.7 5.5 3 5.5 3c-.7 1.7-.2 3-.1 3.3A4.8 4.8 0 0 0 4 9.8c0 4.8 2.9 5.9 5.7 6.2-.5.5-.6 1-.6 2.1V22',
};

class SiteRouter extends StatelessComponent {
  const SiteRouter({super.key});

  @override
  Component build(BuildContext context) {
    return Router(
      routes: [
        Route(path: '/', builder: (_, __) => const PortfolioPage(copy: en)),
        Route(path: '/fa', builder: (_, __) => const PortfolioPage(copy: fa)),
      ],
    );
  }
}

class PortfolioPage extends StatelessComponent {
  final PortfolioCopy copy;

  const PortfolioPage({required this.copy, super.key});

  @override
  Component build(BuildContext context) {
    final structuredData = jsonEncode({
      '@context': 'https://schema.org',
      '@type': 'Person',
      'name': 'Sayed Mohammad Amin Emrani',
      'alternateName': 'سید محمد امین عمرانی',
      'url': 'https://smae1993.github.io',
      'image': 'https://smae1993.github.io/amin-logo.svg',
      'email': 'mailto:smae1993@gmail.com',
      'jobTitle': 'Go (Golang) Backend Developer',
      'knowsAbout': ['Go', 'Golang', 'Backend Development', 'REST APIs', 'PostgreSQL', 'Docker', 'Linux', 'System Design'],
      'sameAs': [
        'https://github.com/smae1993',
        'https://www.linkedin.com/in/smae1993/',
        'https://t.me/smae1993',
        'https://www.instagram.com/smae1993/',
      ],
    });

    return Component.fragment([
      Document.html(attributes: {
        'lang': copy.locale,
        'dir': copy.dir,
        'data-theme': 'dark',
      }),
      Document.head(
        title: copy.title,
        meta: {
          'description': copy.description,
          'author': 'Sayed Mohammad Amin Emrani',
          'theme-color': '#173e64',
          'color-scheme': 'dark light',
          'robots': 'index, follow, max-image-preview:large',
          'twitter:card': 'summary_large_image',
          'twitter:title': copy.title,
          'twitter:description': copy.description,
          'twitter:image': 'https://smae1993.github.io/og.svg',
        },
        children: [
          RawText('''
<link rel="canonical" href="${_e(copy.canonical)}">
<link rel="alternate" hreflang="${copy.locale == 'fa' ? 'en' : 'fa'}" href="${_e(copy.alternate)}">
<link rel="alternate" hreflang="x-default" href="https://smae1993.github.io/">
<meta property="og:type" content="website">
<meta property="og:url" content="${_e(copy.canonical)}">
<meta property="og:title" content="${_e(copy.title)}">
<meta property="og:description" content="${_e(copy.description)}">
<meta property="og:image" content="https://smae1993.github.io/og.svg">
<meta property="og:locale" content="${copy.locale == 'fa' ? 'fa_IR' : 'en_US'}">
<script type="application/ld+json">$structuredData</script>
'''),
        ],
      ),
      RawText(_renderPage(copy)),
    ]);
  }
}

String _renderPage(PortfolioCopy copy) {
  final isFa = copy.locale == 'fa';
  final out = StringBuffer();

  out.write('''
<a class="skip-link" href="#main">${isFa ? 'رفتن به محتوای اصلی' : 'Skip to content'}</a>
<div class="noise" aria-hidden="true"></div>
<div class="ambient ambient-one" aria-hidden="true"></div>
<div class="ambient ambient-two" aria-hidden="true"></div>
<header class="site-header" data-header>
  <div class="container header-inner">
    <a class="brand" href="${isFa ? '/fa/' : '/'}" aria-label="${_e(copy.heroName)}">
      <img class="brand-mark" src="/amin-logo.svg" width="44" height="44" alt="">
      <span class="brand-text">smae1993</span>
    </a>
    <nav class="desktop-nav" aria-label="${isFa ? 'ناوبری اصلی' : 'Primary navigation'}">
''');
  for (final item in copy.nav) {
    out.write('<a href="${_e(item.href)}">${_e(item.label)}</a>');
  }
  out.write('''
    </nav>
    <div class="header-actions">
      <a class="language-switch" href="${_e(copy.alternateHref)}">${_e(copy.languageName)}</a>
      <button class="icon-button command-button" type="button" data-command-trigger aria-label="${isFa ? 'منوی سریع' : 'Quick menu'}">⌘K</button>
      <button class="icon-button theme-toggle" type="button" data-theme-toggle aria-label="${isFa ? 'تغییر پوسته' : 'Toggle theme'}">
        <svg class="sun" viewBox="0 0 24 24"><path d="M12 3v2m0 14v2M3 12h2m14 0h2M5.6 5.6 7 7m10 10 1.4 1.4M18.4 5.6 17 7M7 17l-1.4 1.4"></path><circle cx="12" cy="12" r="4"></circle></svg>
        <svg class="moon" viewBox="0 0 24 24"><path d="M20 15.5A8.5 8.5 0 0 1 8.5 4 8.5 8.5 0 1 0 20 15.5Z"></path></svg>
      </button>
    </div>
  </div>
</header>
<main id="main">
  <section class="hero section" id="home">
    <div class="container hero-grid">
      <div class="hero-copy reveal">
        <div class="availability"><span></span>${_e(copy.availability)}</div>
        <p class="eyebrow">${_e(copy.heroEyebrow)}</p>
        <h1><small>${_e(copy.heroName)}</small>${_e(copy.heroTitle)}</h1>
        <p class="hero-lead">${_e(copy.heroLead)}</p>
        <div class="hero-actions">
          <a class="button button-primary" href="#projects">${_e(copy.heroPrimary)}<svg viewBox="0 0 24 24"><path d="${isFa ? 'm8 5-7 7 7 7M1 12h22' : 'm16 5 7 7-7 7M23 12H1'}"></path></svg></a>
          <a class="button button-ghost" href="#contact">${_e(copy.heroSecondary)}</a>
        </div>
        <div class="hero-meta" dir="ltr"><span>Kerman · Iran</span><i></i><span>UTC +03:30</span><i></i><span>Remote friendly</span></div>
      </div>
      <div class="hero-visual reveal" data-tilt>
        <div class="orbit orbit-one"></div><div class="orbit orbit-two"></div>
        <div class="terminal-card">
          <div class="terminal-header"><div class="window-controls"><i></i><i></i><i></i></div><span>${_e(copy.terminalTitle)}</span><b>● LIVE</b></div>
          <div class="terminal-body" dir="ltr">
''');
  for (var i = 0; i < copy.terminalLines.length; i++) {
    final line = copy.terminalLines[i];
    out.write('<div class="terminal-line${line.startsWith(r'$') ? ' command' : ''}" style="--delay:${i * 100}ms">${_e(line)}</div>');
  }
  out.write('''
            <div class="terminal-cursor"></div>
          </div>
          <div class="code-map" aria-hidden="true"><span style="--x:8%;--y:18%;--s:1.05">GO</span><span style="--x:62%;--y:16%;--s:.9">SQL</span><span style="--x:20%;--y:71%;--s:.9">DOCKER</span><span style="--x:69%;--y:70%;--s:.95">API</span><span style="--x:43%;--y:43%;--s:1.4">{ }</span></div>
        </div>
      </div>
    </div>
    <div class="container metric-grid reveal">
''');
  for (final metric in copy.metrics) {
    out.write('<div class="metric"><strong>${_e(metric.value)}</strong><span>${_e(metric.label)}</span></div>');
  }
  out.write('''
    </div>
  </section>
  <section class="section" id="about">
    <div class="container">
      <div class="section-heading reveal"><p class="eyebrow">${_e(copy.aboutEyebrow)}</p><h2>${_e(copy.aboutTitle)}</h2></div>
      <div class="about-grid">
        <div class="about-copy reveal">
''');
  for (final paragraph in copy.aboutBody) {
    out.write('<p>${_e(paragraph)}</p>');
  }
  out.write('''
          <div class="signature" dir="ltr"><span>S. M. Amin Emrani</span><small>Go Developer · Backend Engineer</small></div>
        </div>
        <div class="about-cards">
''');
  for (var i = 0; i < copy.principles.length; i++) {
    final card = copy.principles[i];
    out.write('<article class="principle-card reveal" style="--i:$i"><div class="principle-icon"><svg viewBox="0 0 24 24"><path d="${_e(_icons[card.icon] ?? '')}"></path></svg></div><div><h3>${_e(card.title)}</h3><p>${_e(card.text)}</p></div></article>');
  }
  out.write('''
        </div>
      </div>
    </div>
  </section>
  <section class="section projects-section" id="projects">
    <div class="container">
      <div class="section-heading split-heading reveal"><div><p class="eyebrow">${_e(copy.projectsEyebrow)}</p><h2>${_e(copy.projectsTitle)}</h2></div><p>${_e(copy.projectsIntro)}</p></div>
      <div class="projects-grid">
''');
  for (var i = 0; i < copy.projects.length; i++) {
    final project = copy.projects[i];
    out.write('<article class="project-card reveal${project.featured ? ' featured' : ''}" style="--accent:${_e(project.accent)};--i:$i">');
    out.write('<div class="project-topline"><span>${_e(project.kicker)}</span><span>${_e(project.status)}</span></div>');
    out.write('<div class="project-monogram"><b>${_e(project.name.substring(0, 1))}</b><i></i><i></i><i></i></div>');
    out.write('<h3>${_e(project.name)}</h3><p>${_e(project.description)}</p><div class="tag-list">');
    for (final tech in project.stack) {
      out.write('<span>${_e(tech)}</span>');
    }
    out.write('</div><div class="project-footer">');
    if (project.href != null) {
      out.write('<a href="${_e(project.href!)}" target="_blank" rel="noreferrer">${_e(copy.visitLabel)} ↗</a>');
    } else {
      out.write('<span class="private-label"><svg viewBox="0 0 24 24"><rect x="4" y="10" width="16" height="11" rx="2"></rect><path d="M8 10V7a4 4 0 0 1 8 0v3"></path></svg>${_e(copy.privateLabel)}</span>');
    }
    out.write('</div></article>');
  }
  out.write('''
      </div>
    </div>
  </section>
  <section class="section" id="stack">
    <div class="container">
      <div class="section-heading split-heading reveal"><div><p class="eyebrow">${_e(copy.stackEyebrow)}</p><h2>${_e(copy.stackTitle)}</h2></div><p>${_e(copy.stackIntro)}</p></div>
      <div class="stack-grid">
''');
  for (var i = 0; i < copy.stackGroups.length; i++) {
    final group = copy.stackGroups[i];
    out.write('<article class="stack-card reveal" style="--i:$i"><div class="stack-number">0${i + 1}</div><h3>${_e(group.title)}</h3><ul>');
    for (final item in group.items) {
      out.write('<li><span></span>${_e(item)}</li>');
    }
    out.write('</ul></article>');
  }
  out.write('''
      </div>
    </div>
  </section>
  <section class="section process-section">
    <div class="container">
      <div class="section-heading reveal"><p class="eyebrow">${_e(copy.processEyebrow)}</p><h2>${_e(copy.processTitle)}</h2></div>
      <div class="process-list">
''');
  for (final step in copy.processSteps) {
    out.write('<article class="process-item reveal"><span>${_e(step.number)}</span><h3>${_e(step.title)}</h3><p>${_e(step.text)}</p><b>↗</b></article>');
  }
  out.write('''
      </div>
    </div>
  </section>
  <section class="section" id="opensource">
    <div class="container">
      <div class="section-heading split-heading reveal"><div><p class="eyebrow">${_e(copy.openSourceEyebrow)}</p><h2>${_e(copy.openSourceTitle)}</h2></div><p>${_e(copy.openSourceIntro)}</p></div>
      <div class="repo-grid">
''');
  for (final repo in copy.repos) {
    out.write('<a class="repo-card reveal" href="${_e(repo.href)}" target="_blank" rel="noreferrer"><div class="repo-icon"><svg viewBox="0 0 24 24"><path d="${_e(_contactIcons['github']!)}"></path></svg></div><div><div class="repo-title"><h3>${_e(repo.name)}</h3><span>↗</span></div><p>${_e(repo.description)}</p><small><i></i>${_e(repo.language)}</small></div></a>');
  }
  out.write('''
      </div>
      <div class="center-action reveal"><a class="text-link" href="https://github.com/smae1993?tab=repositories" target="_blank" rel="noreferrer">${_e(copy.allRepos)}<span>↗</span></a></div>
    </div>
  </section>
  <section class="section contact-section" id="contact">
    <div class="container">
      <div class="contact-card reveal">
        <div class="contact-orbit"></div>
        <div class="contact-intro">
          <p class="eyebrow">${_e(copy.contactEyebrow)}</p>
          <h2>${_e(copy.contactTitle)}</h2>
          <p>${_e(copy.contactText)}</p>
          <div class="contact-primary-actions">
            <a class="button button-light" href="mailto:smae1993@gmail.com?subject=Go%20backend%20opportunity">${_e(copy.contactPrimary)}<svg viewBox="0 0 24 24"><path d="${isFa ? 'm8 5-7 7 7 7M1 12h22' : 'm16 5 7 7-7 7M23 12H1'}"></path></svg></a>
            <button class="button button-outline-light" type="button" data-copy-email data-default="${_e(copy.copyEmail)}" data-copied="${_e(copy.copiedEmail)}">${_e(copy.copyEmail)}</button>
          </div>
          <p class="contact-response-note">${_e(copy.responseNote)}</p>
        </div>
        <div class="contact-channels">
''');
  for (final channel in copy.channels) {
    final external = channel.icon != 'email';
    out.write('<a class="contact-channel" href="${_e(channel.href)}"${external ? ' target="_blank" rel="noreferrer"' : ''}><div class="contact-channel-icon ${_e(channel.icon)}">');
    if (channel.icon == 'linkedin') {
      out.write('<span>in</span>');
    } else {
      out.write('<svg viewBox="0 0 24 24"><path d="${_e(_contactIcons[channel.icon] ?? '')}"></path></svg>');
    }
    out.write('</div><div class="contact-channel-copy"><strong>${_e(channel.label)}</strong><small dir="ltr">${_e(channel.handle)}</small></div><span class="contact-channel-arrow">↗</span></a>');
  }
  out.write('''
        </div>
      </div>
    </div>
  </section>
</main>
<footer class="site-footer">
  <div class="container footer-inner">
    <div class="footer-brand"><img src="/amin-logo.svg" width="42" height="42" alt=""><div><strong>smae1993</strong><p>${_e(copy.footer)}</p></div></div>
    <p>© ${DateTime.now().year} S. M. Amin Emrani</p>
  </div>
</footer>
<dialog class="command-dialog" data-command-dialog>
  <div class="command-panel">
    <div class="command-search"><svg viewBox="0 0 24 24"><circle cx="11" cy="11" r="7"></circle><path d="m20 20-4-4"></path></svg><span>${_e(copy.commandPlaceholder)}</span><kbd>ESC</kbd></div>
    <div class="command-list">
''');
  for (final item in copy.commands) {
    out.write('<a href="${_e(item.href)}" data-command-link><span>${_e(item.label)}</span><kbd>${_e(item.hint)}</kbd></a>');
  }
  out.write('''
    </div>
    <div class="command-footer">↑↓ · ${isFa ? 'انتخاب و باز کردن' : 'Navigate and open'} · ↵</div>
  </div>
</dialog>
''');

  return out.toString();
}
