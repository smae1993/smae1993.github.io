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
  StackGroup('Go / Golang', ['Go', 'Gin', 'GORM', 'net/http', 'REST APIs', 'Concurrency']),
  StackGroup('Data & Storage', ['PostgreSQL', 'MySQL', 'SQLite', 'Redis', 'Data modeling', 'SQL']),
  StackGroup('Infrastructure', ['Docker', 'Linux', 'Nginx', 'Git', 'CI/CD', 'Deployment']),
  StackGroup('Backend Engineering', ['System design', 'Multi-tenancy', 'Auth & RBAC', 'Testing', 'Observability', 'Documentation']),
  StackGroup('Complementary Web & Mobile', ['Next.js', 'React', 'Flutter', 'Dart', 'Jaspr', 'HTML / CSS']),
  StackGroup('Other Backend & IoT', ['Laravel', 'NestJS', 'ASP.NET Core', 'ESP32', 'FreeRTOS', 'MQTT']),
];

const faProjects = <Project>[
  Project(name: 'هما', kicker: 'Accounting Platform', description: 'پلتفرم حسابداری چندسازمانی با مدیریت حساب‌ها، تراکنش‌ها، فاکتور، انبار، شعب، سطوح دسترسی و همگام‌سازی بین موبایل و وب.', stack: ['Go', 'Next.js', 'Flutter', 'MySQL', 'Docker'], accent: '#7c3aed', status: 'در حال توسعه', featured: true),
  Project(name: 'کسب‌فا', kicker: 'Multi-tenant Commerce', description: 'فروشگاه‌ساز SaaS برای کسب‌وکارهای تخصصی با معماری چندمستاجری، تم‌های قابل‌توسعه، مدیریت دامنه و تجربه خرید بهینه.', stack: ['Go', 'Next.js', 'Flutter', 'Multi-tenant', 'S3'], accent: '#10b981', status: 'محصول SaaS', featured: true),
  Project(name: 'کارمانیا', kicker: 'اکوسیستم نرم‌افزاری', description: 'اکوسیستم نرم‌افزاری کارمانیا برای دیجیتال‌سازی و مدیریت یکپارچه فرایندهای کسب‌وکار.', stack: ['Go', 'Jaspr', 'Flutter', 'Dart'], accent: '#8b5cf6', status: 'محصول', href: 'https://karmania.net'),
  Project(name: 'تسکوک', kicker: 'Task & Calendar', description: 'ابزار مدیریت کار و تقویم با تمرکز بر وضوح، سرعت و تجربه یکپارچه دسکتاپ و موبایل.', stack: ['Go', 'Flutter', 'Productivity', 'Cross-platform'], accent: '#6366f1', status: 'چندسکویی'),
  Project(name: 'آسان دارو', kicker: 'وب‌سایت آنلاین', description: 'نسخه عمومی آسان دارو برای مشاهده مستقیم پروژه و تجربه کاربری آن.', stack: ['asandaroo.com'], accent: '#14b8a6', status: 'آنلاین', href: 'https://asandaroo.com'),
  Project(name: 'نیوالکترون', kicker: 'وب‌سایت آنلاین', description: 'نسخه عمومی نیوالکترون برای مشاهده مستقیم پروژه و تجربه کاربری آن.', stack: ['newelectron.ir'], accent: '#06b6d4', status: 'آنلاین', href: 'https://newelectron.ir'),
  Project(name: 'مودیفای', kicker: 'Tax Automation', description: 'نرم‌افزار واسط سامانه مودیان با پردازش فاکتور، OCR، کنترل خطاها و گردش کار مناسب مشاوران و شرکت‌های مالی.', stack: ['Flutter', 'Backend API', 'OCR', 'Tax Tech'], accent: '#f59e0b', status: 'فین‌تک'),
  Project(name: 'دیوان', kicker: 'CRM & Projects', description: 'سیستم مدیریت ارتباط با مشتری و پروژه برای تیم‌های کوچک؛ از سرنخ و فروش تا فعالیت‌ها، پروژه‌ها و گزارش مدیریتی.', stack: ['CRM', 'Project Management', 'Next.js', 'API'], accent: '#0ea5e9', status: 'B2B SaaS'),
];

const enProjects = <Project>[
  Project(name: 'Homa', kicker: 'Accounting Platform', description: 'A multi-organization accounting platform covering accounts, transactions, invoicing, inventory, branches, permissions, and web/mobile synchronization.', stack: ['Go', 'Next.js', 'Flutter', 'MySQL', 'Docker'], accent: '#7c3aed', status: 'In development', featured: true),
  Project(name: 'Kasbfa', kicker: 'Multi-tenant Commerce', description: 'A SaaS store builder for specialist businesses with multi-tenant architecture, extensible themes, domain management, and optimized storefronts.', stack: ['Go', 'Next.js', 'Flutter', 'Multi-tenant', 'S3'], accent: '#10b981', status: 'SaaS product', featured: true),
  Project(name: 'Karmania', kicker: 'Business Software Ecosystem', description: 'A software ecosystem for digitizing and managing business workflows across connected products.', stack: ['Go', 'Jaspr', 'Flutter', 'Dart'], accent: '#8b5cf6', status: 'Product', href: 'https://karmania.net'),
  Project(name: 'Taskuk', kicker: 'Task & Calendar', description: 'A focused task and calendar tool designed for clarity, speed, and a consistent desktop and mobile experience.', stack: ['Go', 'Flutter', 'Productivity', 'Cross-platform'], accent: '#6366f1', status: 'Cross-platform'),
  Project(name: 'Asan Daroo', kicker: 'Live Website', description: 'The public Asan Daroo website, available to review the live project and its user experience.', stack: ['asandaroo.com'], accent: '#14b8a6', status: 'Live', href: 'https://asandaroo.com'),
  Project(name: 'NewElectron', kicker: 'Live Website', description: 'The public NewElectron website, available to review the live project and its user experience.', stack: ['newelectron.ir'], accent: '#06b6d4', status: 'Live', href: 'https://newelectron.ir'),
  Project(name: 'Moadify', kicker: 'Tax Automation', description: 'Tax intermediary software with invoice processing, OCR, validation, and workflows for financial consultants and companies.', stack: ['Flutter', 'Backend API', 'OCR', 'Tax Tech'], accent: '#f59e0b', status: 'Fintech'),
  Project(name: 'Divan', kicker: 'CRM & Projects', description: 'A CRM and project management system for small teams, covering leads, sales, activities, projects, and reporting.', stack: ['CRM', 'Project Management', 'Next.js', 'API'], accent: '#0ea5e9', status: 'B2B SaaS'),
];

const reposFa = <RepoItem>[
  RepoItem('go-user-crud-app', 'نمونه برنامه مدیریت کاربران و عملیات CRUD با Go.', 'https://github.com/smae1993/go-user-crud-app', 'Go'),
  RepoItem('my_first_go_web_api', 'نمونه اولیه توسعه Web API با Go.', 'https://github.com/smae1993/my_first_go_web_api', 'Go'),
  RepoItem('chakavak', 'موزیک‌پلیر چندسکویی با Flutter و تمرکز بر تجربه دسکتاپ و موبایل.', 'https://github.com/smae1993/chakavak', 'Flutter'),
  RepoItem('hamresan', 'پروژه‌ای محصول‌محور برای تجربه معماری و توسعه سرتاسری.', 'https://github.com/smae1993/hamresan', 'Full-stack'),
  RepoItem('glassy', 'کامپوننت‌ها و آزمایش‌های رابط کاربری شیشه‌ای برای Flutter.', 'https://github.com/smae1993/glassy', 'Dart'),
  RepoItem('persian_pdf_to_excel', 'ابزار تبدیل داده‌های PDF فارسی به خروجی ساخت‌یافته Excel.', 'https://github.com/smae1993/persian_pdf_to_excel', 'Python'),
];

const reposEn = <RepoItem>[
  RepoItem('go-user-crud-app', 'A Go application exploring user CRUD operations.', 'https://github.com/smae1993/go-user-crud-app', 'Go'),
  RepoItem('my_first_go_web_api', 'An early exploration of web API development in Go.', 'https://github.com/smae1993/my_first_go_web_api', 'Go'),
  RepoItem('chakavak', 'A cross-platform Flutter music player built around desktop and mobile UX.', 'https://github.com/smae1993/chakavak', 'Flutter'),
  RepoItem('hamresan', 'A product-oriented playground for end-to-end architecture and delivery.', 'https://github.com/smae1993/hamresan', 'Full-stack'),
  RepoItem('glassy', 'Glassmorphism UI components and experiments for Flutter.', 'https://github.com/smae1993/glassy', 'Dart'),
  RepoItem('persian_pdf_to_excel', 'A utility for converting Persian PDF data into structured Excel output.', 'https://github.com/smae1993/persian_pdf_to_excel', 'Python'),
];

const channelsFa = <ContactChannel>[
  ContactChannel('ایمیل', 'smae1993@gmail.com', 'mailto:smae1993@gmail.com?subject=Go%20backend%20opportunity', 'email'),
  ContactChannel('لینکدین', 'linkedin.com/in/smae1993', 'https://www.linkedin.com/in/smae1993/', 'linkedin'),
  ContactChannel('تلگرام', '@smae1993', 'https://t.me/smae1993', 'telegram'),
  ContactChannel('اینستاگرام', '@smae1993', 'https://www.instagram.com/smae1993/', 'instagram'),
  ContactChannel('گیت‌هاب', 'github.com/smae1993', 'https://github.com/smae1993', 'github'),
];

const channelsEn = <ContactChannel>[
  ContactChannel('Email', 'smae1993@gmail.com', 'mailto:smae1993@gmail.com?subject=Go%20backend%20opportunity', 'email'),
  ContactChannel('LinkedIn', 'linkedin.com/in/smae1993', 'https://www.linkedin.com/in/smae1993/', 'linkedin'),
  ContactChannel('Telegram', '@smae1993', 'https://t.me/smae1993', 'telegram'),
  ContactChannel('Instagram', '@smae1993', 'https://www.instagram.com/smae1993/', 'instagram'),
  ContactChannel('GitHub', 'github.com/smae1993', 'https://github.com/smae1993', 'github'),
];

const fa = PortfolioCopy(
  locale: 'fa',
  dir: 'rtl',
  languageName: 'فا',
  alternateHref: '/',
  title: 'سید محمد امین عمرانی | توسعه‌دهنده Go و مهندس بک‌اند',
  description: 'پورتفولیوی سید محمد امین عمرانی؛ توسعه‌دهنده Go (Golang) و مهندس بک‌اند با تمرکز بر API، معماری نرم‌افزار، دیتابیس و زیرساخت.',
  canonical: 'https://smae1993.github.io/fa/',
  alternate: 'https://smae1993.github.io/',
  nav: [NavItem('درباره من', '#about'), NavItem('پروژه‌ها', '#projects'), NavItem('تخصص‌ها', '#stack'), NavItem('تماس', '#contact')],
  heroEyebrow: 'GO DEVELOPER · BACKEND ENGINEER · SYSTEM DESIGN',
  heroName: 'سید محمد امین عمرانی',
  heroTitle: 'توسعه‌دهنده Go؛ سیستم‌های بک‌اند قابل‌اتکا می‌سازم.',
  heroLead: 'تمرکز اصلی من Go، طراحی API، مدل‌سازی داده، معماری SaaS و زیرساخت نرم‌افزار است. تجربه توسعه وب، موبایل و IoT به من کمک می‌کند سیستم‌ها را از دید سرتاسری طراحی کنم.',
  heroPrimary: 'مشاهده پروژه‌ها',
  heroSecondary: 'تماس و همکاری',
  availability: 'آماده همکاری در توسعه بک‌اند و Go',
  terminalTitle: 'amin@workstation — go-backend',
  terminalLines: [r'$ whoami', 'Go developer + backend engineer', r'$ current_focus', 'Go · SQL · Docker · REST APIs', r'$ philosophy', 'simple code, reliable systems.'],
  metrics: [Metric('Go', 'توسعه سرویس و API'), Metric('Data', 'SQL و مدل‌سازی داده'), Metric('Systems', 'معماری و همزمانی'), Metric('DevOps', 'Docker، Linux و استقرار')],
  aboutEyebrow: 'درباره من',
  aboutTitle: 'از معماری و داده تا سرویس‌های قابل نگهداری.',
  aboutBody: ['توسعه نرم‌افزار را از شناخت مسئله، طراحی مدل داده و قرارداد API آغاز می‌کنم. تمرکز فعلی من ساخت سرویس‌های Go با کد خوانا، مدیریت خطای روشن، تست و توجه به کارایی است.', 'کارشناسی مهندسی الکترونیک دارم و در توسعه وب، موبایل، زیرساخت و IoT تجربه دارم. این تجربه به من در درک نیازهای کلاینت، شبکه و محیط اجرای سرویس کمک می‌کند.'],
  principles: [Principle('طراحی API', 'قراردادهای روشن، اعتبارسنجی، مدیریت خطا و کنترل دسترسی.', 'product'), Principle('معماری بک‌اند', 'مرزبندی سرویس‌ها، مدل داده و انتخاب الگوی مناسب برای توسعه و همزمانی.', 'architecture'), Principle('نگاه Production', 'تست، مانیتورینگ، امنیت، نسخه‌بندی و دیپلوی.', 'production')],
  projectsEyebrow: 'محصولات منتخب',
  projectsTitle: 'محصولات منتخب با تمرکز بر بک‌اند و معماری.',
  projectsIntro: 'پروژه‌های منتخب شامل محصولات مبتنی بر Go و تجربه پیشین من در SaaS، فین‌تک و نرم‌افزارهای کسب‌وکار هستند. فناوری هر پروژه جداگانه مشخص شده است.',
  privateLabel: 'محصول خصوصی',
  visitLabel: 'مشاهده',
  projects: faProjects,
  stackEyebrow: 'جعبه ابزار',
  stackTitle: 'Go در مرکز جعبه ابزار مهندسی من.',
  stackIntro: 'Go زبان اصلی تمرکز من است؛ در کنار آن از پایگاه‌های داده رابطه‌ای، Redis، Docker و Linux برای توسعه و استقرار بک‌اند استفاده می‌کنم. سایر فناوری‌ها مکمل تجربه مهندسی من هستند.',
  stackGroups: stackGroups,
  processEyebrow: 'روش کار',
  processTitle: 'از ابهام تا محصول قابل استفاده.',
  processSteps: [ProcessStep('01', 'صورت‌بندی مسئله', 'کاربر، جریان اصلی، محدودیت‌ها و معیار موفقیت را قبل از انتخاب تکنولوژی روشن می‌کنم.'), ProcessStep('02', 'طراحی معماری', 'مرز سرویس‌ها، مدل داده، قرارداد API و مسیر تکامل محصول را مشخص می‌کنم.'), ProcessStep('03', 'ساخت عمودی', 'یک جریان کامل از UI تا دیتابیس را زود می‌سازم تا ریسک‌های واقعی آشکار شوند.'), ProcessStep('04', 'آماده‌سازی Production', 'تست، امنیت، لاگ، بکاپ، دیپلوی و مستندات را بخشی از محصول می‌دانم.')],
  openSourceEyebrow: 'کدهای عمومی',
  openSourceTitle: 'نمونه کدهای عمومی Go در GitHub.',
  openSourceIntro: 'نمونه‌های عمومی Go برای توسعه API و عملیات CRUD، در کنار سایر ابزارها و پروژه‌های متن‌باز من.',
  repos: reposFa,
  allRepos: 'مشاهده همه ریپوها',
  contactEyebrow: 'فرصت‌های شغلی و همکاری',
  contactTitle: 'برای ساخت سیستم‌های بک‌اند قابل‌اتکا همکاری کنیم.',
  contactText: 'برای فرصت‌های شغلی Go، توسعه بک‌اند، طراحی API، معماری نرم‌افزار و همکاری فنی از طریق ایمیل یا لینکدین با من تماس بگیرید.',
  contactPrimary: 'تماس از طریق ایمیل',
  copyEmail: 'کپی ایمیل',
  copiedEmail: 'کپی شد',
  responseNote: 'از طریق ایمیل، لینکدین یا تلگرام می‌توانید با من در ارتباط باشید.',
  channels: channelsFa,
  footer: 'طراحی و توسعه با Jaspr و Dart — سریع، سبک و آماده GitHub Pages.',
  commandPlaceholder: 'یک بخش را انتخاب کنید…',
  commands: [CommandItem('رفتن به پروژه‌ها', '#projects', 'P'), CommandItem('مشاهده تخصص‌ها', '#stack', 'S'), CommandItem('تماس و همکاری', '#contact', 'O'), CommandItem('ارسال ایمیل', 'mailto:smae1993@gmail.com?subject=Go%20backend%20opportunity', 'E'), CommandItem('باز کردن لینکدین', 'https://www.linkedin.com/in/smae1993/', 'L')],
);

const en = PortfolioCopy(
  locale: 'en',
  dir: 'ltr',
  languageName: 'EN',
  alternateHref: '/fa/',
  title: 'Sayed Mohammad Amin Emrani | Go (Golang) Backend Developer',
  description: 'Portfolio of Sayed Mohammad Amin Emrani, a Go (Golang) backend developer focused on APIs, software architecture, databases, and infrastructure.',
  canonical: 'https://smae1993.github.io/',
  alternate: 'https://smae1993.github.io/fa/',
  nav: [NavItem('About', '#about'), NavItem('Projects', '#projects'), NavItem('Toolkit', '#stack'), NavItem('Contact', '#contact')],
  heroEyebrow: 'GO DEVELOPER · BACKEND ENGINEER · SYSTEM DESIGN',
  heroName: 'Sayed Mohammad Amin Emrani',
  heroTitle: 'Go developer building dependable backend systems.',
  heroLead: 'My primary focus is Go, API design, data modeling, SaaS architecture, and software infrastructure. My broader experience across web, mobile, and IoT informs an end-to-end approach to backend engineering.',
  heroPrimary: 'Explore my work',
  heroSecondary: 'Get in touch',
  availability: 'Open to Go and backend engineering collaborations',
  terminalTitle: 'amin@workstation — go-backend',
  terminalLines: [r'$ whoami', 'Go developer + backend engineer', r'$ current_focus', 'Go · SQL · Docker · REST APIs', r'$ philosophy', 'simple code, reliable systems.'],
  metrics: [Metric('Go', 'Backend services and APIs'), Metric('Data', 'SQL and data modeling'), Metric('Systems', 'Architecture and concurrency'), Metric('DevOps', 'Docker, Linux and delivery')],
  aboutEyebrow: 'About me',
  aboutTitle: 'From system architecture and data to maintainable services.',
  aboutBody: ['I approach software development by understanding the problem, modeling data, and defining clear API contracts. My current focus is building Go services with readable code, explicit error handling, testing, and attention to performance.', 'I hold a B.Sc. in Electronics Engineering and have experience across web, mobile, infrastructure, and IoT. This background helps me understand client requirements, networks, and runtime environments.'],
  principles: [Principle('API design', 'Clear contracts, validation, error handling, and access control.', 'product'), Principle('Backend architecture', 'Service boundaries, data models, and appropriate design and concurrency patterns.', 'architecture'), Principle('Production mindset', 'Testing, monitoring, security, versioning, and delivery.', 'production')],
  projectsEyebrow: 'Selected products',
  projectsTitle: 'Selected products through a backend and architecture lens.',
  projectsIntro: 'Selected work includes Go-based products alongside my broader experience in SaaS, fintech, and business software. Each project lists its own technologies.',
  privateLabel: 'Private product',
  visitLabel: 'Visit',
  projects: enProjects,
  stackEyebrow: 'Toolkit',
  stackTitle: 'Go at the center of my engineering toolkit.',
  stackIntro: 'Go is my primary focus, supported by relational databases, Redis, Docker, and Linux for backend development and delivery. Other technologies complement my engineering background.',
  stackGroups: stackGroups,
  processEyebrow: 'Process',
  processTitle: 'From ambiguity to a usable product.',
  processSteps: [ProcessStep('01', 'Frame the problem', 'Clarify users, critical flows, constraints, and success criteria before choosing a stack.'), ProcessStep('02', 'Design the system', 'Define service boundaries, data models, API contracts, and the product evolution path.'), ProcessStep('03', 'Build vertically', 'Ship one complete flow from interface to database early to reveal the real risks.'), ProcessStep('04', 'Productionize', 'Treat testing, security, logging, backups, deployment, and documentation as product work.')],
  openSourceEyebrow: 'Public code',
  openSourceTitle: 'Public Go code on GitHub.',
  openSourceIntro: 'Public Go examples exploring web APIs and CRUD operations, alongside other open-source tools and projects.',
  repos: reposEn,
  allRepos: 'View all repositories',
  contactEyebrow: 'Opportunities & collaboration',
  contactTitle: 'Let’s build reliable backend systems.',
  contactText: 'Get in touch for Go developer roles, backend engineering, API development, software architecture, and technical collaboration.',
  contactPrimary: 'Contact me by email',
  copyEmail: 'Copy email',
  copiedEmail: 'Copied',
  responseNote: 'You can reach me by email, LinkedIn, or Telegram.',
  channels: channelsEn,
  footer: 'Designed and built with Jaspr + Dart — fast, lightweight, and ready for GitHub Pages.',
  commandPlaceholder: 'Choose a destination…',
  commands: [CommandItem('Go to projects', '#projects', 'P'), CommandItem('Explore toolkit', '#stack', 'S'), CommandItem('Contact & collaboration', '#contact', 'O'), CommandItem('Send an email', 'mailto:smae1993@gmail.com?subject=Go%20backend%20opportunity', 'E'), CommandItem('Open LinkedIn', 'https://www.linkedin.com/in/smae1993/', 'L')],
);
