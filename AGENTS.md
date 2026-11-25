# AI Contributor Guide

## Project goal

Maintain a high-performance bilingual personal portfolio for Sayed Mohammad Amin Emrani. The site should present a Go-focused backend developer with broad software engineering experience, not a generic template.

## Technical constraints

- Jaspr static output only; no runtime server dependency.
- Dart is the application language and Jaspr is the web framework.
- Preserve Persian RTL and English LTR parity.
- Keep browser-side JavaScript minimal; `web/site.js` only handles lightweight UI behavior.
- Do not add runtime APIs, databases, or server adapters.
- Do not add large UI libraries or icon packages without a strong reason.

## Content rules

- Shared localized content lives in `lib/site_data.dart`.
- Toolkit priority must keep Go, backend engineering, databases, and infrastructure prominent. Flutter, Jaspr, and Dart remain complementary skills.
- Never publish private repository links or confidential implementation details.
- Do not invent employment history, client names, metrics, dates, or project outcomes.
- Keep Persian and English versions semantically aligned.

## Design rules

- Preserve the existing dark technical/product aesthetic and light mode support.
- Main CSS lives in `web/styles/global.css` and refinements in `web/styles/overrides.css`.
- Use existing CSS tokens before adding new colors.
- Respect accessibility, focus states, contrast, responsive layouts, and reduced motion.
- Avoid decorative effects that reduce readability or performance.

## Validation

Run before committing:

```bash
dart pub get
dart pub global activate jaspr_cli 0.23.2
dart pub global run jaspr_cli:jaspr build --sitemap-domain https://smae1993.github.io
```

Review both `/` and `/fa/` at desktop and mobile widths.
