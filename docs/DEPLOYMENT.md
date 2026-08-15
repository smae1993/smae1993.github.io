# راهنمای اجرا و انتشار

## پیش‌نیاز

- Dart SDK 3.8 یا جدیدتر
- Git
- Jaspr CLI 0.23.2

## اجرای محلی

```bash
git clone https://github.com/smae1993/smae1993.github.io.git
cd smae1993.github.io
dart pub get
dart pub global activate jaspr_cli 0.23.2
dart pub global run jaspr_cli:jaspr serve
```

## ساخت نسخه Production

```bash
dart pub global run jaspr_cli:jaspr build --sitemap-domain https://smae1993.github.io
```

خروجی نهایی داخل `build/jaspr/` ساخته می‌شود. پروژه در حالت `static` است و مسیرهای `/` و `/fa/` هنگام build پیش‌رندر می‌شوند.

## انتشار خودکار در GitHub Pages

Workflow موجود در `.github/workflows/deploy.yml` با هر Push روی شاخه `main` این مراحل را انجام می‌دهد:

1. دریافت سورس
2. نصب Dart و وابستگی‌های پروژه
3. نصب Jaspr CLI
4. اجرای build استاتیک Jaspr
5. آپلود `build/jaspr/` به GitHub Pages
6. انتشار سایت

در تنظیمات ریپو مسیر زیر باید روی GitHub Actions باشد:

`Settings → Pages → Build and deployment → Source → GitHub Actions`

آدرس نهایی:

`https://smae1993.github.io`

## تغییر محتوا

متن‌های فارسی و انگلیسی، پروژه‌ها، Toolkit و اطلاعات تماس در `lib/site_data.dart` هستند.

## تغییر ظاهر

استایل اصلی در `web/styles/global.css` و اصلاحات تکمیلی در `web/styles/overrides.css` قرار دارد. برای حفظ طراحی فعلی، ابتدا از tokenها و کلاس‌های موجود استفاده کنید.

## دامنه اختصاصی

برای دامنه اختصاصی:

1. فایل `web/CNAME` را با دامنه موردنظر بسازید.
2. canonicalها و آدرس sitemap در تنظیمات build را هماهنگ کنید.
3. DNS را طبق راهنمای GitHub Pages تنظیم کنید.
