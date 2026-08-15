(() => {
  const root = document.documentElement;
  root.dataset.theme = localStorage.getItem('portfolio-theme') ||
    (matchMedia('(prefers-color-scheme: light)').matches ? 'light' : 'dark');

  document.querySelector('[data-theme-toggle]')?.addEventListener('click', () => {
    const next = root.dataset.theme === 'dark' ? 'light' : 'dark';
    root.dataset.theme = next;
    localStorage.setItem('portfolio-theme', next);
  });

  const header = document.querySelector('[data-header]');
  const onScroll = () => header?.classList.toggle('scrolled', scrollY > 24);
  onScroll();
  addEventListener('scroll', onScroll, { passive: true });

  const observer = new IntersectionObserver((entries) => entries.forEach((entry) => {
    if (entry.isIntersecting) {
      entry.target.classList.add('visible');
      observer.unobserve(entry.target);
    }
  }), { threshold: .12, rootMargin: '0px 0px -40px' });
  document.querySelectorAll('.reveal').forEach((el) => observer.observe(el));

  const dialog = document.querySelector('[data-command-dialog]');
  const open = () => dialog instanceof HTMLDialogElement && !dialog.open && dialog.showModal();
  const close = () => dialog instanceof HTMLDialogElement && dialog.open && dialog.close();
  document.querySelectorAll('[data-command-trigger]').forEach((button) => button.addEventListener('click', open));
  document.querySelectorAll('[data-command-link]').forEach((link) => link.addEventListener('click', close));
  dialog?.addEventListener('click', (event) => event.target === dialog && close());
  addEventListener('keydown', (event) => {
    if ((event.metaKey || event.ctrlKey) && event.key.toLowerCase() === 'k') {
      event.preventDefault();
      open();
    }
    if (event.key === 'Escape') close();
  });

  const copyButton = document.querySelector('[data-copy-email]');
  copyButton?.addEventListener('click', async () => {
    try {
      await navigator.clipboard.writeText('smae1993@gmail.com');
      copyButton.textContent = copyButton.dataset.copied || 'Copied';
      setTimeout(() => {
        copyButton.textContent = copyButton.dataset.default || 'Copy email';
      }, 1600);
    } catch {
      location.href = 'mailto:smae1993@gmail.com';
    }
  });

  if (matchMedia('(pointer: fine)').matches && !matchMedia('(prefers-reduced-motion: reduce)').matches) {
    const tilt = document.querySelector('[data-tilt]');
    tilt?.addEventListener('pointermove', (event) => {
      const rect = tilt.getBoundingClientRect();
      const x = (event.clientX - rect.left) / rect.width - .5;
      const y = (event.clientY - rect.top) / rect.height - .5;
      tilt.style.setProperty('--rx', `${-y * 7}deg`);
      tilt.style.setProperty('--ry', `${x * 9}deg`);
    });
    tilt?.addEventListener('pointerleave', () => {
      tilt.style.setProperty('--rx', '0deg');
      tilt.style.setProperty('--ry', '0deg');
    });
  }
})();
