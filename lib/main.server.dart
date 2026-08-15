import 'package:jaspr/dom.dart';
import 'package:jaspr/server.dart';

import 'main.server.options.dart';
import 'site.dart';

void main() {
  Jaspr.initializeApp(options: defaultServerOptions);

  runApp(
    Document(
      title: 'Sayed Mohammad Amin Emrani | Full-stack Software Engineer',
      meta: const {
        'description': 'Portfolio of Sayed Mohammad Amin Emrani, a full-stack engineer building Flutter, Jaspr, Dart, Go, SaaS, DevOps, and IoT products.',
        'author': 'Sayed Mohammad Amin Emrani',
        'theme-color': '#173e64',
        'color-scheme': 'dark light',
        'robots': 'index, follow, max-image-preview:large',
      },
      head: const [
        RawText('<link rel="stylesheet" href="/styles/global.css">'),
        RawText('<link rel="stylesheet" href="/styles/overrides.css">'),
        RawText('<link rel="icon" type="image/svg+xml" href="/amin-logo.svg">'),
        RawText('<link rel="manifest" href="/manifest.webmanifest">'),
        RawText('<script src="/site.js" defer></script>'),
      ],
      body: const SiteRouter(),
    ),
  );
}
