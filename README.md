# Amin Portfolio

پورتفولیوی شخصی سید محمد امین عمرانی، بازطراحی‌شده از صفر با Astro.

## ویژگی‌ها

- طراحی اختصاصی Dark/Light با ظاهر مهندسی و محصول‌محور
- نسخه فارسی RTL و نسخه انگلیسی در مسیر `/en/`
- بدون فریم‌ورک JavaScript سمت کلاینت
- انیمیشن‌های سبک با رعایت `prefers-reduced-motion`
- Command Palette با `Ctrl/⌘ + K`
- SEO کامل، Open Graph، JSON-LD، sitemap و robots.txt
- Responsive برای موبایل، تبلت و دسکتاپ
- انتشار خودکار در GitHub Pages
- محتوای پروژه‌ها و مهارت‌ها به‌صورت متمرکز و قابل‌ویرایش

## شروع سریع

```bash
nvm use
npm install
npm run dev
```

## دستورات

```bash
npm run dev      # توسعه محلی
npm run build    # ساخت نسخه production
npm run preview  # بررسی خروجی build
```

## ساختار مهم

```text
src/
├── components/PortfolioPage.astro
├── data/portfolio.ts
├── layouts/BaseLayout.astro
├── pages/
│   ├── index.astro
│   ├── en/index.astro
│   └── 404.astro
└── styles/global.css
```

راهنمای کامل اجرا و انتشار در [`docs/DEPLOYMENT.md`](docs/DEPLOYMENT.md) قرار دارد.

## تکنولوژی

- Astro 6
- TypeScript
- CSS خالص
- GitHub Actions / GitHub Pages

## مالکیت

تمام حقوق محتوای شخصی و برند متعلق به Sayed Mohammad Amin Emrani است.
