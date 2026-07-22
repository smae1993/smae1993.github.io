# AI Contributor Guide

## Project goal

Maintain a high-performance bilingual personal portfolio for Sayed Mohammad Amin Emrani. The site must feel like the portfolio of a senior product-minded engineer, not a generic template.

## Technical constraints

- Astro static output only.
- Keep client-side JavaScript minimal and framework-free.
- Preserve Persian RTL and English LTR parity.
- Do not add runtime APIs, databases, or server adapters.
- Do not add large UI libraries or icon packages without a strong reason.
- Node version is defined in `.nvmrc`.

## Content rules

- Shared localized content lives in `src/data/portfolio.ts`.
- Never publish private repository links or confidential implementation details.
- Do not invent employment history, client names, metrics, dates, or project outcomes.
- Keep the Persian and English versions semantically aligned.

## Design rules

- Retain the dark technical/product aesthetic and light mode support.
- Use existing CSS tokens before adding new colors.
- Respect accessibility, focus states, contrast, responsive layouts, and reduced motion.
- Avoid decorative effects that reduce readability or performance.

## Validation

Run before committing:

```bash
npm install
npm run build
```

Review both `/` and `/en/` at desktop and mobile widths.
