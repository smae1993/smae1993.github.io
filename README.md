# Amin Portfolio

پورتفولیوی شخصی سید محمد امین عمرانی که از صفر با Astro 7 بازطراحی شده است.

## قابلیت‌ها

- طراحی اختصاصی Dark/Light با ظاهر مهندسی و محصول‌محور
- زبان پیش‌فرض انگلیسی در مسیر `/`
- نسخه فارسی RTL در مسیر `/fa/`
- بخش Start a Project / ثبت سفارش با ایمیل، لینکدین، تلگرام، اینستاگرام و GitHub
- لوگو و آیکن شخصی در هدر، فوتر، مرورگر و Manifest
- جاوااسکریپت سمت کلاینت کم و بدون فریم‌ورک رابط کاربری
- انیمیشن‌های سبک با پشتیبانی از `prefers-reduced-motion`
- Command Palette با `Ctrl/⌘ + K`
- SEO، Open Graph، JSON-LD، sitemap و robots.txt
- طراحی Responsive برای موبایل، تبلت و دسکتاپ
- انتشار خودکار روی GitHub Pages
- محتوای متمرکز و قابل‌ویرایش برای پروژه‌ها و مهارت‌ها

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
│   ├── fa/index.astro
│   ├── en/index.astro
│   └── 404.astro
└── styles/
    ├── global.css
    └── overrides.css
```

راهنمای کامل اجرا و انتشار در [`docs/DEPLOYMENT.md`](docs/DEPLOYMENT.md) قرار دارد.

## ویرایش محتوا

متن‌ها، پروژه‌ها و اطلاعات تماس در `src/data/portfolio.ts` نگهداری می‌شوند. لوگوی اصلی نیز در `public/amin-logo.svg` قرار دارد.

## تکنولوژی

- Astro 7
- TypeScript
- CSS خالص
- GitHub Actions / GitHub Pages

## مالکیت

تمام حقوق محتوای شخصی و برند متعلق به Sayed Mohammad Amin Emrani است.
