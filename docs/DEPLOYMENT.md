# راهنمای اجرا و انتشار

## پیش‌نیاز

- Node.js نسخه `22.12.0` یا جدیدتر
- npm
- Git

نسخه درست Node در فایل `.nvmrc` مشخص شده است. اگر `nvm` دارید:

```bash
nvm install
nvm use
```

## اجرای محلی

```bash
git clone https://github.com/smae1993/smae1993.github.io.git
cd smae1993.github.io
npm install
npm run dev
```

سایت به‌صورت پیش‌فرض روی `http://localhost:4321` اجرا می‌شود.

## ساخت نسخه Production

```bash
npm run build
npm run preview
```

خروجی نهایی داخل پوشه `dist/` ساخته می‌شود.

## انتشار خودکار در GitHub Pages

Workflow موجود در `.github/workflows/deploy.yml` با هر Push روی شاخه `main` این مراحل را انجام می‌دهد:

1. دریافت سورس
2. نصب وابستگی‌ها و Build با Action رسمی Astro
3. انتشار خروجی روی GitHub Pages

در تنظیمات ریپو مسیر زیر را باز کنید:

`Settings → Pages → Build and deployment → Source`

مقدار Source باید روی **GitHub Actions** باشد. بعد از Push، وضعیت انتشار در تب **Actions** قابل مشاهده است.

آدرس نهایی:

`https://smae1993.github.io`

## تغییر محتوا

تمام متن‌های فارسی و انگلیسی در فایل زیر هستند:

`src/data/portfolio.ts`

- شیء `fa` برای نسخه فارسی
- شیء `en` برای نسخه انگلیسی

برای اضافه‌کردن پروژه، یک آیتم جدید به `projects.items` اضافه کنید.

## تغییر ظاهر

استایل اصلی در فایل زیر است:

`src/styles/global.css`

متغیرهای رنگ، پس‌زمینه، سطح‌ها و اندازه کانتینر در ابتدای فایل تعریف شده‌اند.

## دامنه اختصاصی

برای دامنه اختصاصی:

1. فایل `public/CNAME` را با دامنه خود بسازید.
2. مقدار `site` در `astro.config.mjs` را تغییر دهید.
3. canonicalها و sitemap را با دامنه جدید هماهنگ کنید.
4. DNS را طبق راهنمای GitHub Pages تنظیم کنید.
