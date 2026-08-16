(() => {
  const root = document.documentElement;
  const THEME_KEY = 'portfolio-theme';
  const LOCALE_KEY = 'portfolio-locale';
  let revealObserver;

  const icons = {
    search: '<svg viewBox="0 0 24 24" aria-hidden="true"><circle cx="11" cy="11" r="8"></circle><path d="m21 21-4.3-4.3"></path></svg>',
    sun: '<svg class="sun" viewBox="0 0 24 24" aria-hidden="true"><circle cx="12" cy="12" r="4"></circle><path d="M12 2v2M12 20v2M4.93 4.93l1.41 1.41M17.66 17.66l1.41 1.41M2 12h2M20 12h2M6.34 17.66l-1.41 1.41M19.07 4.93l-1.41 1.41"></path></svg>',
    moon: '<svg class="moon" viewBox="0 0 24 24" aria-hidden="true"><path d="M21 12.79A9 9 0 1 1 11.21 3 7 7 0 0 0 21 12.79Z"></path></svg>',
    languages: '<svg viewBox="0 0 24 24" aria-hidden="true"><path d="m5 8 6 6"></path><path d="m4 14 6-6 2-3"></path><path d="M2 5h12"></path><path d="M7 2h1"></path><path d="m22 22-5-10-5 10"></path><path d="M14 18h6"></path></svg>',
    chevron: '<svg class="language-chevron" viewBox="0 0 24 24" aria-hidden="true"><path d="m6 9 6 6 6-6"></path></svg>',
    check: '<svg class="language-check" viewBox="0 0 24 24" aria-hidden="true"><path d="m20 6-11 11-5-5"></path></svg>',
  };

  const currentLocale = () => (root.lang || 'en').toLowerCase().startsWith('fa') ? 'fa' : 'en';
  const isFa = () => currentLocale() === 'fa';

  root.dataset.theme = localStorage.getItem(THEME_KEY) ||
    (matchMedia('(prefers-color-scheme: light)').matches ? 'light' : 'dark');

  function closeLanguageMenu() {
    const menu = document.querySelector('.language-menu');
    const trigger = document.querySelector('[data-language-trigger]');
    menu?.classList.remove('open');
    trigger?.setAttribute('aria-expanded', 'false');
  }

  function decorateHeader() {
    const legacySwitch = document.querySelector('.language-switch');
    if (legacySwitch && !document.querySelector('.language-menu')) {
      const locale = currentLocale();
      const wrapper = document.createElement('div');
      wrapper.className = 'language-menu';
      wrapper.innerHTML = `
        <button class="language-trigger" type="button" data-language-trigger aria-haspopup="menu" aria-expanded="false" aria-label="${locale === 'fa' ? 'انتخاب زبان' : 'Choose language'}">
          ${icons.languages}
          <span>${locale === 'fa' ? 'فا' : 'EN'}</span>
          ${icons.chevron}
        </button>
        <div class="language-dropdown" role="menu" aria-label="${locale === 'fa' ? 'زبان' : 'Language'}">
          <button type="button" role="menuitemradio" aria-checked="${locale === 'fa'}" data-language-option="fa">
            <span><b>فا</b><small>فارسی</small></span>${locale === 'fa' ? icons.check : ''}
          </button>
          <button type="button" role="menuitemradio" aria-checked="${locale === 'en'}" data-language-option="en">
            <span><b>EN</b><small>English</small></span>${locale === 'en' ? icons.check : ''}
          </button>
        </div>`;
      legacySwitch.replaceWith(wrapper);
    }

    const commandButton = document.querySelector('[data-command-trigger]');
    if (commandButton) {
      commandButton.innerHTML = icons.search;
      commandButton.setAttribute('aria-label', isFa() ? 'جستجو و منوی سریع' : 'Search and quick menu');
      commandButton.setAttribute('title', isFa() ? 'جستجو — Ctrl/⌘ K' : 'Search — Ctrl/⌘ K');
    }

    const themeButton = document.querySelector('[data-theme-toggle]');
    if (themeButton) {
      themeButton.innerHTML = `${icons.sun}${icons.moon}`;
      themeButton.setAttribute('aria-label', isFa() ? 'تغییر حالت روشن و تاریک' : 'Toggle light and dark mode');
    }

    const brand = document.querySelector('.brand');
    brand?.setAttribute('href', '/');
  }

  function buildContributionGrid() {
    const map = document.querySelector('.code-map');
    if (!map || map.dataset.heatmap === 'true') return;

    const cells = Array.from({ length: 168 }, (_, index) => {
      const seed = (index * 29 + Math.floor(index / 7) * 17 + 11) % 41;
      const level = seed < 10 ? 0 : seed < 18 ? 1 : seed < 27 ? 2 : seed < 35 ? 3 : 4;
      return `<span class="contribution-cell" data-level="${level}"></span>`;
    }).join('');

    map.dataset.heatmap = 'true';
    map.setAttribute('role', 'img');
    map.setAttribute('aria-label', isFa() ? 'شبکه فعالیت به سبک گیت‌هاب' : 'GitHub-style activity grid');
    map.innerHTML = `
      <div class="contribution-head"><span>${isFa() ? 'فعالیت' : 'activity'}</span><span>12 mo</span></div>
      <div class="contribution-grid" aria-hidden="true">${cells}</div>
      <div class="contribution-legend" aria-hidden="true"><span>${isFa() ? 'کم' : 'Less'}</span><i data-level="0"></i><i data-level="1"></i><i data-level="2"></i><i data-level="3"></i><i data-level="4"></i><span>${isFa() ? 'زیاد' : 'More'}</span></div>`;
  }

  function setupReveal() {
    revealObserver?.disconnect();
    revealObserver = new IntersectionObserver((entries) => entries.forEach((entry) => {
      if (entry.isIntersecting) {
        entry.target.classList.add('visible');
        revealObserver.unobserve(entry.target);
      }
    }), { threshold: .12, rootMargin: '0px 0px -40px' });
    document.querySelectorAll('.reveal').forEach((el) => revealObserver.observe(el));
  }

  function setupTilt() {
    if (!matchMedia('(pointer: fine)').matches || matchMedia('(prefers-reduced-motion: reduce)').matches) return;
    const tilt = document.querySelector('[data-tilt]');
    if (!tilt || tilt.dataset.tiltBound === 'true') return;
    tilt.dataset.tiltBound = 'true';
    tilt.addEventListener('pointermove', (event) => {
      const rect = tilt.getBoundingClientRect();
      const x = (event.clientX - rect.left) / rect.width - .5;
      const y = (event.clientY - rect.top) / rect.height - .5;
      tilt.style.setProperty('--rx', `${-y * 7}deg`);
      tilt.style.setProperty('--ry', `${x * 9}deg`);
    });
    tilt.addEventListener('pointerleave', () => {
      tilt.style.setProperty('--rx', '0deg');
      tilt.style.setProperty('--ry', '0deg');
    });
  }

  function syncHead(nextDocument) {
    document.title = nextDocument.title;
    const selectors = [
      'meta[name="description"]',
      'meta[property="og:title"]',
      'meta[property="og:description"]',
      'meta[property="og:locale"]',
      'meta[name="twitter:title"]',
      'meta[name="twitter:description"]',
      'link[rel="canonical"]',
    ];
    selectors.forEach((selector) => {
      const current = document.head.querySelector(selector);
      const next = nextDocument.head.querySelector(selector);
      if (!current || !next) return;
      if (current instanceof HTMLMetaElement && next instanceof HTMLMetaElement) current.content = next.content;
      if (current instanceof HTMLLinkElement && next instanceof HTMLLinkElement) current.href = next.href;
    });
  }

  function initDynamicUi() {
    decorateHeader();
    buildContributionGrid();
    setupReveal();
    setupTilt();
    document.querySelector('[data-header]')?.classList.toggle('scrolled', scrollY > 24);
  }

  async function switchLocale(locale) {
    if (!['fa', 'en'].includes(locale)) return;
    closeLanguageMenu();
    localStorage.setItem(LOCALE_KEY, locale);
    if (locale === currentLocale()) return;

    root.classList.add('locale-switching');
    try {
      const response = await fetch(locale === 'fa' ? '/fa/' : '/', { credentials: 'same-origin', cache: 'force-cache' });
      if (!response.ok) throw new Error(`Language request failed: ${response.status}`);
      const nextDocument = new DOMParser().parseFromString(await response.text(), 'text/html');
      document.body.innerHTML = nextDocument.body.innerHTML;
      root.lang = locale;
      root.dir = locale === 'fa' ? 'rtl' : 'ltr';
      root.dataset.locale = locale;
      syncHead(nextDocument);
      history.replaceState({ locale }, '', `/${location.hash || ''}`);
      initDynamicUi();
      requestAnimationFrame(() => root.classList.remove('locale-switching'));
    } catch (error) {
      console.error(error);
      location.href = locale === 'fa' ? '/fa/' : '/';
    }
  }

  function openCommandDialog() {
    const dialog = document.querySelector('[data-command-dialog]');
    if (dialog instanceof HTMLDialogElement && !dialog.open) dialog.showModal();
  }

  function closeCommandDialog() {
    const dialog = document.querySelector('[data-command-dialog]');
    if (dialog instanceof HTMLDialogElement && dialog.open) dialog.close();
  }

  addEventListener('scroll', () => {
    document.querySelector('[data-header]')?.classList.toggle('scrolled', scrollY > 24);
  }, { passive: true });

  document.addEventListener('click', async (event) => {
    const target = event.target instanceof Element ? event.target : null;
    if (!target) return;

    const languageTrigger = target.closest('[data-language-trigger]');
    if (languageTrigger) {
      event.preventDefault();
      const menu = languageTrigger.closest('.language-menu');
      const open = !menu?.classList.contains('open');
      document.querySelectorAll('.language-menu.open').forEach((item) => item.classList.remove('open'));
      menu?.classList.toggle('open', open);
      languageTrigger.setAttribute('aria-expanded', String(open));
      return;
    }

    const languageOption = target.closest('[data-language-option]');
    if (languageOption) {
      event.preventDefault();
      await switchLocale(languageOption.getAttribute('data-language-option'));
      return;
    }

    if (!target.closest('.language-menu')) closeLanguageMenu();

    if (target.closest('[data-theme-toggle]')) {
      const next = root.dataset.theme === 'dark' ? 'light' : 'dark';
      root.dataset.theme = next;
      localStorage.setItem(THEME_KEY, next);
      return;
    }

    if (target.closest('[data-command-trigger]')) {
      openCommandDialog();
      return;
    }

    if (target.closest('[data-command-link]')) {
      closeCommandDialog();
      return;
    }

    const dialog = target.closest('[data-command-dialog]');
    if (dialog && event.target === dialog) {
      closeCommandDialog();
      return;
    }

    const copyButton = target.closest('[data-copy-email]');
    if (copyButton) {
      try {
        await navigator.clipboard.writeText('smae1993@gmail.com');
        copyButton.textContent = copyButton.dataset.copied || 'Copied';
        setTimeout(() => {
          copyButton.textContent = copyButton.dataset.default || 'Copy email';
        }, 1600);
      } catch {
        location.href = 'mailto:smae1993@gmail.com';
      }
    }
  });

  addEventListener('keydown', (event) => {
    if ((event.metaKey || event.ctrlKey) && event.key.toLowerCase() === 'k') {
      event.preventDefault();
      openCommandDialog();
    }
    if (event.key === 'Escape') {
      closeCommandDialog();
      closeLanguageMenu();
    }
  });

  initDynamicUi();

  const pathLocale = location.pathname.startsWith('/fa') ? 'fa' : 'en';
  const savedLocale = localStorage.getItem(LOCALE_KEY);
  if (pathLocale === 'fa') {
    localStorage.setItem(LOCALE_KEY, 'fa');
    history.replaceState({ locale: 'fa' }, '', `/${location.hash || ''}`);
  } else if (savedLocale && savedLocale !== currentLocale()) {
    switchLocale(savedLocale);
  }
})();
