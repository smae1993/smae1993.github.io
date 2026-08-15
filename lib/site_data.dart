class NavItem {
  final String label;
  final String href;
  const NavItem(this.label, this.href);
}

class Metric {
  final String value;
  final String label;
  const Metric(this.value, this.label);
}

class Principle {
  final String title;
  final String text;
  final String icon;
  const Principle(this.title, this.text, this.icon);
}

class Project {
  final String name;
  final String kicker;
  final String description;
  final List<String> stack;
  final String accent;
  final String status;
  final String? href;
  final bool featured;
  const Project({required this.name, required this.kicker, required this.description, required this.stack, required this.accent, required this.status, this.href, this.featured = false});
}

class StackGroup {
  final String title;
  final List<String> items;
  const StackGroup(this.title, this.items);
}

class ProcessStep {
  final String number;
  final String title;
  final String text;
  const ProcessStep(this.number, this.title, this.text);
}

class RepoItem {
  final String name;
  final String description;
  final String href;
  final String language;
  const RepoItem(this.name, this.description, this.href, this.language);
}

class ContactChannel {
  final String label;
  final String handle;
  final String href;
  final String icon;
  const ContactChannel(this.label, this.handle, this.href, this.icon);
}

class CommandItem {
  final String label;
  final String href;
  final String hint;
  const CommandItem(this.label, this.href, this.hint);
}

class PortfolioCopy {
  final String locale;
  final String dir;
  final String languageName;
  final String alternateHref;
  final String title;
  final String description;
  final String canonical;
  final String alternate;
  final List<NavItem> nav;
  final String heroEyebrow;
  final String heroName;
  final String heroTitle;
  final String heroLead;
  final String heroPrimary;
  final String heroSecondary;
  final String availability;
  final String terminalTitle;
  final List<String> terminalLines;
  final List<Metric> metrics;
  final String aboutEyebrow;
  final String aboutTitle;
  final List<String> aboutBody;
  final List<Principle> principles;
  final String projectsEyebrow;
  final String projectsTitle;
  final String projectsIntro;
  final String privateLabel;
  final String visitLabel;
  final List<Project> projects;
  final String stackEyebrow;
  final String stackTitle;
  final String stackIntro;
  final List<StackGroup> stackGroups;
  final String processEyebrow;
  final String processTitle;
  final List<ProcessStep> processSteps;
  final String openSourceEyebrow;
  final String openSourceTitle;
  final String openSourceIntro;
  final List<RepoItem> repos;
  final String allRepos;
  final String contactEyebrow;
  final String contactTitle;
  final String contactText;
  final String contactPrimary;
  final String copyEmail;
  final String copiedEmail;
  final String responseNote;
  final List<ContactChannel> channels;
  final String footer;
  final String commandPlaceholder;
  final List<CommandItem> commands;

  const PortfolioCopy({
    required this.locale,
    required this.dir,
    required this.languageName,
    required this.alternateHref,
    required this.title,
    required this.description,
    required this.canonical,
    required this.alternate,
    required this.nav,
    required this.heroEyebrow,
    required this.heroName,
    required this.heroTitle,
    required this.heroLead,
    required this.heroPrimary,
    required this.heroSecondary,
    required this.availability,
    required this.terminalTitle,
    required this.terminalLines,
    required this.metrics,
    required this.aboutEyebrow,
    required this.aboutTitle,
    required this.aboutBody,
    required this.principles,
    required this.projectsEyebrow,
    required this.projectsTitle,
    required this.projectsIntro,
    required this.privateLabel,
    required this.visitLabel,
    required this.projects,
    required this.stackEyebrow,
    required this.stackTitle,
    required this.stackIntro,
    required this.stackGroups,
    required this.processEyebrow,
    required this.processTitle,
    required this.processSteps,
    required this.openSourceEyebrow,
    required this.openSourceTitle,
    required this.openSourceIntro,
    required this.repos,
    required this.allRepos,
    required this.contactEyebrow,
    required this.contactTitle,
    required this.contactText,
    required this.contactPrimary,
    required this.copyEmail,
    required this.copiedEmail,
    required this.responseNote,
    required this.channels,
    required this.footer,
    required this.commandPlaceholder,
    required this.commands,
  });
}

const stackGroups = <StackGroup>[
  StackGroup('Primary stack', ['Flutter', 'Jaspr', 'Dart', 'Riverpod', 'GoRouter', 'Go']),
  StackGroup('Web', ['Jaspr / Dart', 'HTML / CSS', 'SEO / SSG', 'Next.js', 'React', 'RTL Interfaces']),
  StackGroup('Backend', ['Go / Gin / GORM', 'Laravel', 'NestJS', 'ASP.NET Core', 'REST APIs', 'Auth & RBAC']),
  StackGroup('Data & Infra', ['PostgreSQL', 'MySQL', 'SQLite', 'Redis', 'Docker', 'Linux / Nginx']),
  StackGroup('IoT', ['ESP32', 'ESP8266', 'FreeRTOS', 'MQTT', 'Device provisioning', 'Realtime control']),
  StackGroup('Engineering', ['System design', 'Multi-tenancy', 'CI/CD', 'Observability', 'Documentation', 'AI-assisted workflow']),
];

const faProjects = <Project>[
  Project(name: 'Homa', kicker: 'Accounting Platform', description: 'پلتفرم حسابداری چندسازمانی با مدیریت حساب‌ها، تراکنش‌ها، فاکتور، انبار، شعب، سطوح دسترسی و همگام‌سازی بین موبایل و وب.', stack: ['Go', 'Next.js', 'Flutter', 'MySQL', 'Docker'], accent: '#7c3aed', status: 'در حال توسعه', featured: true),
  Project(name: 'Kasbfa', kicker: 'Multi-tenant Commerce', description: 'فروشگاه‌ساز SaaS برای کسب‌وکارهای تخصصی با معماری چندمستاجری، تم‌های قابل‌توسعه، مدیریت دامنه و تجربه خرید بهینه.', stack: ['Go', 'Next.js', 'Flutter', 'Multi-tenant', 'S3'], accent: '#10b981', status: 'محصول SaaS', featured: true),
  Project(name: 'Moadify', kicker: 'Tax Automation', description: 'نرم‌افزار واسط سامانه مودیان با پردازش فاکتور، OCR، کنترل خطاها و گردش کار مناسب مشاوران و شرکت‌های مالی.', stack: ['Flutter', 'Backend API', 'OCR', 'Tax Tech'], accent: '#f59e0b', status: 'فین‌تک'),
  Project(name: 'Taskuk', kicker: 'Task & Calendar', description: 'ابزار مدیریت کار و تقویم با تمرکز بر وضوح، سرعت و تجربه یکپارچه دسکتاپ و موبایل.', stack: ['Flutter', 'Go', 'Productivity', 'Cross-platform'], accent: '#6366f1', status: 'چندسکویی'),
  Project(name: 'Divan', kicker: 'CRM & Projects', description: 'سیستم مدیریت ارتباط با مشتری و پروژه برای تیم‌های کوچک؛ از سرنخ و فروش تا فعالیت‌ها، پروژه‌ها و گزارش مدیریتی.', stack: ['CRM', 'Project Management', 'Next.js', 'API'], accent: '#0ea5e9', status: 'B2B SaaS'),
  Project(name: 'Kelec', kicker: 'IoT Ecosystem', description: 'اکوسیستم قابل‌اعتماد برای کنترل تجهیزات مبتنی بر ESP32 و ESP8266 با MQTT، اپ موبایل و مدیریت دستگاه.', stack: ['ESP32', 'ESP8266', 'MQTT', 'Flutter', 'Go'], accent: '#22c55e', status: 'IoT'),
];

const enProjects = <Project>[
  Project(name: 'Homa', kicker: 'Accounting Platform', description: 'A multi-organization accounting platform covering accounts, transactions, invoicing, inventory, branches, permissions, and web/mobile synchronization.', stack: ['Go', 'Next.js', 'Flutter', 'MySQL', 'Docker'], accent: '#7c3aed', status: 'In development', featured: true),
  Project(name: 'Kasbfa', kicker: 'Multi-tenant Commerce', description: 'A SaaS store builder for specialist businesses with multi-tenant architecture, extensible themes, domain management, and optimized storefronts.', stack: ['Go', 'Next.js', 'Flutter', 'Multi-tenant', 'S3'], accent: '#10b981', status: 'SaaS product', featured: true),
  Project(name: 'Moadify', kicker: 'Tax Automation', description: 'Tax intermediary software with invoice processing, OCR, validation, and workflows for financial consultants and companies.', stack: ['Flutter', 'Backend API', 'OCR', 'Tax Tech'], accent: '#f59e0b', status: 'Fintech'),
  Project(name: 'Taskuk', kicker: 'Task & Calendar', description: 'A focused task and calendar tool designed for clarity, speed, and a consistent desktop and mobile experience.', stack: ['Flutter', 'Go', 'Productivity', 'Cross-platform'], accent: '#6366f1', status: 'Cross-platform'),
  Project(name: 'Divan', kicker: 'CRM & Projects', description: 'A CRM and project management system for small teams, covering leads, sales, activities, projects, and reporting.', stack: ['CRM', 'Project Management', 'Next.js', 'API'], accent: '#0ea5e9', status: 'B2B SaaS'),
  Project(name: 'Kelec', kicker: 'IoT Ecosystem', description: 'A dependable ecosystem for ESP32/ESP8266 devices with MQTT, mobile control, and device management.', stack: ['ESP32', 'ESP8266', 'MQTT', 'Flutter', 'Go'], accent: '#22c55e', status: 'IoT'),
];

const reposFa = <RepoItem>[
  RepoItem('chakavak', 'موزیک‌پلیر چندسکویی با Flutter و تمرکز بر تجربه دسکتاپ و موبایل.', 'https://github.com/smae1993/chakavak', 'Flutter'),
  RepoItem('hamresan', 'پروژه‌ای محصول‌محور برای تجربه معماری و توسعه سرتاسری.', 'https://github.com/smae1993/hamresan', 'Full-stack'),
  RepoItem('glassy', 'کامپوننت‌ها و آزمایش‌های رابط کاربری شیشه‌ای برای Flutter.', 'https://github.com/smae1993/glassy', 'Dart'),
  RepoItem('persian_pdf_to_excel', 'ابزار تبدیل داده‌های PDF فارسی به خروجی ساخت‌یافته Excel.', 'https://github.com/smae1993/persian_pdf_to_excel', 'Python'),
];

const reposEn = <RepoItem>[
  RepoItem('chakavak', 'A cross-platform Flutter music player built around desktop and mobile UX.', 'https://github.com/smae1993/chakavak', 'Flutter'),
  RepoItem('hamresan', 'A product-oriented playground for end-to-end architecture and delivery.', 'https://github.com/smae1993/hamresan', 'Full-stack'),
  RepoItem('glassy', 'Glassmorphism UI components and experiments for Flutter.', 'https://github.com/smae1993/glassy', 'Dart'),
  RepoItem('persian_pdf_to_excel', 'A utility for converting Persian PDF data into structured Excel output.', 'https://github.com/smae1993/persian_pdf_to_excel', 'Python'),
];

const channelsFa = <ContactChannel>[
  ContactChannel('ایمیل', 'smae1993@gmail.com', 'mailto:smae1993@gmail.com?subject=Project%20inquiry%20from%20portfolio', 'email'),
  ContactChannel('لینکدین', 'linkedin.com/in/smae1993', 'https://www.linkedin.com/in/smae1993/', 'linkedin'),
  ContactChannel('تلگرام', '@smae1993', 'https://t.me/smae1993', 'telegram'),
  ContactChannel('اینستاگرام', '@smae1993', 'https://www.instagram.com/smae1993/', 'instagram'),
  ContactChannel('گیت‌هاب', 'github.com/smae1993', 'https://github.com/smae1993', 'github'),
];

const channelsEn = <ContactChannel>[
  ContactChannel('Email', 'smae1993@gmail.com', 'mailto:smae1993@gmail.com?subject=Project%20inquiry%20from%20portfolio', 'email'),
  ContactChannel('LinkedIn', 'linkedin.com/in/smae1993', 'https://www.linkedin.com/in/smae1993/', 'linkedin'),
  ContactChannel('Telegram', '@smae1993', 'https://t.me/smae1993', 'telegram'),
  ContactChannel('Instagram', '@smae1993', 'https://www.instagram.com/smae1993/', 'instagram'),
  ContactChannel('GitHub', 'github.com/smae1993', 'https://github.com/smae1993', 'github'),
];

const fa = PortfolioCopy(
  locale: 'fa',
  dir: 'rtl',
  languageName: 'EN',
  alternateHref: '/',
  title: 'سید محمد امین عمرانی | مهندس نرم‌افزار فول‌استک',
  description: 'پورتفولیوی سید محمد امین عمرانی؛ مهندس نرم‌افزار فول‌استک و توسعه‌دهنده Flutter، Jaspr، Dart و Go با تمرکز بر محصولات SaaS، DevOps و IoT.',
  canonical: 'https://smae1993.github.io/fa/',
  alternate: 'https://smae1993.github.io/',
  nav: [NavItem('درباره من', '#about'), NavItem('پروژه‌ها', '#projects'), NavItem('تخصص‌ها', '#stack'), NavItem('ثبت سفارش', '#contact')],
  heroEyebrow: 'FULL-STACK ENGINEER · PRODUCT BUILDER · IOT',
  heroName: 'سید محمد امین عمرانی',
  heroTitle: 'محصولات دیجیتال را از یک ایده خام تا یک سیستم واقعی و قابل‌اتکا می‌سازم.',
  heroLead: 'مهندس نرم‌افزار فول‌استک با پس‌زمینه مهندسی الکترونیک؛ متمرکز بر معماری محصول، بک‌اند‌های مقیاس‌پذیر، تجربه کاربری دقیق، اپلیکیشن‌های چندسکویی و زیرساخت production.',
  heroPrimary: 'مشاهده پروژه‌ها',
  heroSecondary: 'ثبت سفارش پروژه',
  availability: 'آماده همکاری روی پروژه‌های جدی',
  terminalTitle: 'amin@workstation — product-lab',
  terminalLines: [r'$ whoami', 'full-stack engineer + product builder', r'$ current_focus', 'Flutter · Jaspr · Dart · Go · SaaS', r'$ philosophy', 'ship useful things, not impressive demos.'],
  metrics: [Metric('Web', 'محصولات سریع و SEO-friendly'), Metric('Mobile', 'اپ‌های واقعی Android و iOS'), Metric('Backend', 'API، معماری داده و امنیت'), Metric('DevOps', 'Docker، Linux و استقرار پایدار')],
  aboutEyebrow: 'درباره من',
  aboutTitle: 'بین محصول، کد و سخت‌افزار فکر می‌کنم.',
  aboutBody: ['من برنامه‌نویسی را فقط نوشتن کد نمی‌بینم. هر پروژه برای من از شناخت مسئله، طراحی جریان درست، انتخاب معماری مناسب و ساخت تجربه‌ای شروع می‌شود که واقعاً قابل استفاده باشد.', 'کارشناسی مهندسی الکترونیک دارم و در توسعه وب، موبایل، زیرساخت و سیستم‌های IoT کار کرده‌ام. این ترکیب کمک می‌کند مسائل را از رابط کاربری تا سرور، شبکه و دستگاه نهایی یکپارچه ببینم.'],
  principles: [Principle('مهندسی محصول', 'تبدیل مسئله کسب‌وکار به قابلیت‌های واضح، قابل‌اندازه‌گیری و قابل‌توسعه.', 'product'), Principle('معماری سرتاسری', 'طراحی هماهنگ دیتابیس، API، پنل وب، اپ موبایل و زیرساخت.', 'architecture'), Principle('نگاه Production', 'تست، مانیتورینگ، امنیت، نسخه‌بندی و دیپلوی از روز اول.', 'production')],
  projectsEyebrow: 'محصولات منتخب',
  projectsTitle: 'پروژه‌هایی که فراتر از یک UI زیبا هستند.',
  projectsIntro: 'بخش عمده کارهای حرفه‌ای من محصولات خصوصی و در حال توسعه‌اند. این نمونه‌ها گستره تجربه من در SaaS، فین‌تک، ابزارهای کسب‌وکار و سیستم‌های چندسکویی را نشان می‌دهند.',
  privateLabel: 'محصول خصوصی',
  visitLabel: 'مشاهده',
  projects: faProjects,
  stackEyebrow: 'جعبه ابزار',
  stackTitle: 'تکنولوژی را بر اساس مسئله انتخاب می‌کنم.',
  stackIntro: 'اولویت اصلی من Flutter، Jaspr و Dart است؛ در کنار آن ابزارهایی را انتخاب می‌کنم که تیم را سریع‌تر کنند، نگهداری بلندمدت را ساده نگه دارند و در production قابل اعتماد باشند.',
  stackGroups: stackGroups,
  processEyebrow: 'روش کار',
  processTitle: 'از ابهام تا محصول قابل استفاده.',
  processSteps: [ProcessStep('01', 'صورت‌بندی مسئله', 'کاربر، جریان اصلی، محدودیت‌ها و معیار موفقیت را قبل از انتخاب تکنولوژی روشن می‌کنم.'), ProcessStep('02', 'طراحی معماری', 'مرز سرویس‌ها، مدل داده، قرارداد API و مسیر تکامل محصول را مشخص می‌کنم.'), ProcessStep('03', 'ساخت عمودی', 'یک جریان کامل از UI تا دیتابیس را زود می‌سازم تا ریسک‌های واقعی آشکار شوند.'), ProcessStep('04', 'آماده‌سازی Production', 'تست، امنیت، لاگ، بکاپ، دیپلوی و مستندات را بخشی از محصول می‌دانم.')],
  openSourceEyebrow: 'کدهای عمومی',
  openSourceTitle: 'آزمایشگاه متن‌باز من در GitHub.',
  openSourceIntro: 'کنار محصولات خصوصی، نمونه‌ها و ابزارهای کوچکی را برای یادگیری، آموزش و اشتراک تجربه منتشر می‌کنم.',
  repos: reposFa,
  allRepos: 'مشاهده همه ریپوها',
  contactEyebrow: 'ثبت سفارش و همکاری',
  contactTitle: 'برای ساخت یک محصول جدی آماده‌ام.',
  contactText: 'برای توسعه MVP، معماری سیستم، ساخت وب‌اپ یا اپلیکیشن، DevOps و پروژه‌های IoT پیام بدهید. بهتر است در پیام اولیه، مسئله، محدوده کار، زمان‌بندی و بودجه تقریبی را بنویسید.',
  contactPrimary: 'ارسال درخواست با ایمیل',
  copyEmail: 'کپی ایمیل',
  copiedEmail: 'کپی شد',
  responseNote: 'برای هماهنگی سریع‌تر می‌توانید از تلگرام یا لینکدین هم پیام بدهید.',
  channels: channelsFa,
  footer: 'طراحی و توسعه با Jaspr و Dart — سریع، سبک و آماده GitHub Pages.',
  commandPlaceholder: 'یک بخش را انتخاب کنید…',
  commands: [CommandItem('رفتن به پروژه‌ها', '#projects', 'P'), CommandItem('مشاهده تخصص‌ها', '#stack', 'S'), CommandItem('ثبت سفارش پروژه', '#contact', 'O'), CommandItem('ارسال ایمیل', 'mailto:smae1993@gmail.com?subject=Project%20inquiry%20from%20portfolio', 'E'), CommandItem('باز کردن لینکدین', 'https://www.linkedin.com/in/smae1993/', 'L')],
);

const en = PortfolioCopy(
  locale: 'en',
  dir: 'ltr',
  languageName: 'FA',
  alternateHref: '/fa/',
  title: 'Sayed Mohammad Amin Emrani | Full-stack Software Engineer',
  description: 'Portfolio of Sayed Mohammad Amin Emrani, a full-stack engineer building Flutter, Jaspr, Dart, Go, SaaS, DevOps, and IoT products.',
  canonical: 'https://smae1993.github.io/',
  alternate: 'https://smae1993.github.io/fa/',
  nav: [NavItem('About', '#about'), NavItem('Projects', '#projects'), NavItem('Toolkit', '#stack'), NavItem('Start a project', '#contact')],
  heroEyebrow: 'FULL-STACK ENGINEER · PRODUCT BUILDER · IOT',
  heroName: 'Sayed Mohammad Amin Emrani',
  heroTitle: 'I turn raw ideas into dependable digital products.',
  heroLead: 'A full-stack software engineer with an electronics background, focused on product architecture, scalable backends, thoughtful user experience, cross-platform apps, and production infrastructure.',
  heroPrimary: 'Explore my work',
  heroSecondary: 'Start a project',
  availability: 'Open to ambitious collaborations',
  terminalTitle: 'amin@workstation — product-lab',
  terminalLines: [r'$ whoami', 'full-stack engineer + product builder', r'$ current_focus', 'Flutter · Jaspr · Dart · Go · SaaS', r'$ philosophy', 'ship useful things, not impressive demos.'],
  metrics: [Metric('Web', 'Fast, accessible and SEO-ready'), Metric('Mobile', 'Real Android and iOS products'), Metric('Backend', 'APIs, data architecture and security'), Metric('DevOps', 'Docker, Linux and reliable delivery')],
  aboutEyebrow: 'About me',
  aboutTitle: 'I think across product, software, and hardware.',
  aboutBody: ['I do not see software development as merely writing code. Every project starts with understanding the problem, shaping the right flows, selecting a maintainable architecture, and building an experience people can actually use.', 'I hold a B.Sc. in Electronics Engineering and have worked across web, mobile, infrastructure, and IoT. That mix helps me reason from the interface down to servers, networks, and connected devices.'],
  principles: [Principle('Product engineering', 'Turning business problems into clear, measurable, and evolvable capabilities.', 'product'), Principle('End-to-end architecture', 'Designing the database, API, web console, mobile app, and infrastructure as one system.', 'architecture'), Principle('Production mindset', 'Testing, monitoring, security, versioning, and delivery from day one.', 'production')],
  projectsEyebrow: 'Selected products',
  projectsTitle: 'Work that goes beyond a polished interface.',
  projectsIntro: 'Most of my professional work is private and actively evolving. These products show my experience across SaaS, fintech, business tooling, and cross-platform systems.',
  privateLabel: 'Private product',
  visitLabel: 'Visit',
  projects: enProjects,
  stackEyebrow: 'Toolkit',
  stackTitle: 'I choose technology around the problem.',
  stackIntro: 'Flutter, Jaspr, and Dart are my primary stack. Around them, I choose tools that accelerate teams, remain maintainable, and behave predictably in production.',
  stackGroups: stackGroups,
  processEyebrow: 'Process',
  processTitle: 'From ambiguity to a usable product.',
  processSteps: [ProcessStep('01', 'Frame the problem', 'Clarify users, critical flows, constraints, and success criteria before choosing a stack.'), ProcessStep('02', 'Design the system', 'Define service boundaries, data models, API contracts, and the product evolution path.'), ProcessStep('03', 'Build vertically', 'Ship one complete flow from interface to database early to reveal the real risks.'), ProcessStep('04', 'Productionize', 'Treat testing, security, logging, backups, deployment, and documentation as product work.')],
  openSourceEyebrow: 'Public code',
  openSourceTitle: 'My open-source laboratory on GitHub.',
  openSourceIntro: 'Alongside private products, I publish experiments and smaller tools for learning, teaching, and sharing experience.',
  repos: reposEn,
  allRepos: 'View all repositories',
  contactEyebrow: 'Start a project',
  contactTitle: 'Let’s build something serious.',
  contactText: 'Reach out for MVP development, system architecture, web or mobile apps, DevOps, and IoT work. A useful first message includes the problem, expected scope, target timeline, and an approximate budget.',
  contactPrimary: 'Send a project inquiry',
  copyEmail: 'Copy email',
  copiedEmail: 'Copied',
  responseNote: 'Telegram and LinkedIn are usually the fastest ways to start a conversation.',
  channels: channelsEn,
  footer: 'Designed and built with Jaspr + Dart — fast, lightweight, and ready for GitHub Pages.',
  commandPlaceholder: 'Choose a destination…',
  commands: [CommandItem('Go to projects', '#projects', 'P'), CommandItem('Explore toolkit', '#stack', 'S'), CommandItem('Start a project', '#contact', 'O'), CommandItem('Send an email', 'mailto:smae1993@gmail.com?subject=Project%20inquiry%20from%20portfolio', 'E'), CommandItem('Open LinkedIn', 'https://www.linkedin.com/in/smae1993/', 'L')],
);
