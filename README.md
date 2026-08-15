# Amin Portfolio

پورتفولیوی شخصی دو‌زبانه سید محمد امین عمرانی با **Dart + Jaspr** و خروجی کاملاً استاتیک برای GitHub Pages.

## قابلیت‌ها

- طراحی اختصاصی Dark/Light با همان ظاهر نسخه قبلی
- زبان پیش‌فرض انگلیسی در مسیر `/`
- نسخه فارسی RTL در مسیر `/fa/`
- اولویت Toolkit: **Flutter → Jaspr → Dart**
- Command Palette با `Ctrl/⌘ + K`
- انیمیشن‌های سبک و پشتیبانی از `prefers-reduced-motion`
- SEO، Open Graph، JSON-LD و sitemap
- طراحی Responsive برای موبایل، تبلت و دسکتاپ
- انتشار خودکار روی GitHub Pages

## شروع سریع

```bash
dart pub get
dart pub global activate jaspr_cli 0.23.2
dart pub global run jaspr_cli:jaspr serve
```

## ساخت Production

```bash
dart pub global run jaspr_cli:jaspr build --sitemap-domain https://smae1993.github.io
```

خروجی نهایی داخل `build/jaspr/` ساخته می‌شود.

## ساختار مهم

```text
lib/
├── main.server.dart
├── site.dart
└── site_data.dart
web/
├── styles/
│   ├── global.css
│   └── overrides.css
├── site.js
├── 404.html
└── assets...
```

## ویرایش محتوا

متن‌ها، پروژه‌ها و اطلاعات تماس در `lib/site_data.dart` نگهداری می‌شوند. ظاهر اصلی در `web/styles/` قرار دارد.

## تکنولوژی

- Flutter — تکنولوژی اصلی اپلیکیشن‌ها
- Jaspr 0.23.x — وب و Static Site Generation
- Dart
- CSS خالص
- GitHub Actions / GitHub Pages

راهنمای انتشار در [`docs/DEPLOYMENT.md`](docs/DEPLOYMENT.md) قرار دارد.
