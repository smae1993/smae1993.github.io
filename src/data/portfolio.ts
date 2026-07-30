export type Locale = 'fa' | 'en';
export type Project = { name: string; kicker: string; description: string; stack: string[]; accent: string; status: string; href?: string; featured?: boolean };
export type ContactChannel = { label: string; handle: string; href: string; icon: 'email' | 'linkedin' | 'telegram' | 'instagram' | 'github' };
export type Copy = {
  locale: Locale; dir: 'rtl' | 'ltr'; languageName: string; alternateHref: string;
  nav: { label: string; href: string }[];
  hero: { eyebrow: string; name: string; title: string; lead: string; primary: string; secondary: string; availability: string; terminalTitle: string; terminalLines: string[] };
  metrics: { value: string; label: string }[];
  about: { eyebrow: string; title: string; body: string[]; cards: { title: string; text: string; icon: string }[] };
  projects: { eyebrow: string; title: string; intro: string; privateLabel: string; visitLabel: string; items: Project[] };
  stack: { eyebrow: string; title: string; intro: string; groups: { title: string; items: string[] }[] };
  process: { eyebrow: string; title: string; steps: { number: string; title: string; text: string }[] };
  openSource: { eyebrow: string; title: string; intro: string; repos: { name: string; description: string; href: string; language: string }[]; allRepos: string };
  contact: { eyebrow: string; title: string; text: string; primary: string; copy: string; copied: string; responseNote: string; channels: ContactChannel[] };
  footer: string;
  commands: { placeholder: string; close: string; items: { label: string; href: string; hint: string }[] };
};

const faProjects: Project[] = [
  { name: 'Homa', kicker: 'Accounting Platform', description: 'پلتفرم حسابداری چندسازمانی با مدیریت حساب‌ها، تراکنش‌ها، فاکتور، انبار، شعب، سطوح دسترسی و همگام‌سازی بین موبایل و وب.', stack: ['Go', 'Next.js', 'Flutter', 'MySQL', 'Docker'], accent: '#7c3aed', status: 'در حال توسعه', featured: true },
  { name: 'Kasbfa', kicker: 'Multi-tenant Commerce', description: 'فروشگاه‌ساز SaaS برای کسب‌وکارهای تخصصی با معماری چندمستاجری، تم‌های قابل‌توسعه، مدیریت دامنه و تجربه خرید بهینه.', stack: ['Go', 'Next.js', 'Flutter', 'Multi-tenant', 'S3'], accent: '#10b981', status: 'محصول SaaS', featured: true },
  { name: 'Moadify', kicker: 'Tax Automation', description: 'نرم‌افزار واسط سامانه مودیان با پردازش فاکتور، OCR، کنترل خطاها و گردش کار مناسب مشاوران و شرکت‌های مالی.', stack: ['Flutter', 'Backend API', 'OCR', 'Tax Tech'], accent: '#f59e0b', status: 'فین‌تک' },
  { name: 'Taskuk', kicker: 'Task & Calendar', description: 'ابزار مدیریت کار و تقویم با تمرکز بر وضوح، سرعت و تجربه یکپارچه دسکتاپ و موبایل.', stack: ['Flutter', 'Go', 'Productivity', 'Cross-platform'], accent: '#6366f1', status: 'چندسکویی' },
  { name: 'Divan', kicker: 'CRM & Projects', description: 'سیستم مدیریت ارتباط با مشتری و پروژه برای تیم‌های کوچک؛ از سرنخ و فروش تا فعالیت‌ها، پروژه‌ها و گزارش مدیریتی.', stack: ['CRM', 'Project Management', 'Next.js', 'API'], accent: '#0ea5e9', status: 'B2B SaaS' },
  { name: 'Kelec', kicker: 'IoT Ecosystem', description: 'اکوسیستم قابل‌اعتماد برای کنترل تجهیزات مبتنی بر ESP32 و ESP8266 با MQTT، اپ موبایل و مدیریت دستگاه.', stack: ['ESP32', 'ESP8266', 'MQTT', 'Flutter', 'Go'], accent: '#22c55e', status: 'IoT' },
];

const enProjects: Project[] = [
  { name: 'Homa', kicker: 'Accounting Platform', description: 'A multi-organization accounting platform covering accounts, transactions, invoicing, inventory, branches, permissions, and web/mobile synchronization.', stack: ['Go', 'Next.js', 'Flutter', 'MySQL', 'Docker'], accent: '#7c3aed', status: 'In development', featured: true },
  { name: 'Kasbfa', kicker: 'Multi-tenant Commerce', description: 'A SaaS store builder for specialist businesses with multi-tenant architecture, extensible themes, domain management, and optimized storefronts.', stack: ['Go', 'Next.js', 'Flutter', 'Multi-tenant', 'S3'], accent: '#10b981', status: 'SaaS product', featured: true },
  { name: 'Moadify', kicker: 'Tax Automation', description: 'Tax intermediary software with invoice processing, OCR, validation, and workflows for financial consultants and companies.', stack: ['Flutter', 'Backend API', 'OCR', 'Tax Tech'], accent: '#f59e0b', status: 'Fintech' },
  { name: 'Taskuk', kicker: 'Task & Calendar', description: 'A focused task and calendar tool designed for clarity, speed, and a consistent desktop and mobile experience.', stack: ['Flutter', 'Go', 'Productivity', 'Cross-platform'], accent: '#6366f1', status: 'Cross-platform' },
  { name: 'Divan', kicker: 'CRM & Projects', description: 'A CRM and project management system for small teams, covering leads, sales, activities, projects, and reporting.', stack: ['CRM', 'Project Management', 'Next.js', 'API'], accent: '#0ea5e9', status: 'B2B SaaS' },
  { name: 'Kelec', kicker: 'IoT Ecosystem', description: 'A dependable ecosystem for ESP32/ESP8266 devices with MQTT, mobile control, and device management.', stack: ['ESP32', 'ESP8266', 'MQTT', 'Flutter', 'Go'], accent: '#22c55e', status: 'IoT' },
];

const stackGroups = [
  { title: 'Backend', items: ['Go / Gin / GORM', 'Laravel', 'NestJS', 'ASP.NET Core', 'REST APIs', 'Auth & RBAC'] },
  { title: 'Frontend', items: ['Astro', 'Next.js', 'React', 'TypeScript', 'Tailwind CSS', 'RTL Interfaces'] },
  { title: 'Mobile', items: ['Flutter', 'Riverpod', 'GoRouter', 'Offline-first', 'Native integrations', 'App Store delivery'] },
  { title: 'Data & Infra', items: ['PostgreSQL', 'MySQL', 'SQLite', 'Redis', 'Docker', 'Linux / Nginx'] },
  { title: 'IoT', items: ['ESP32', 'ESP8266', 'FreeRTOS', 'MQTT', 'Device provisioning', 'Realtime control'] },
  { title: 'Engineering', items: ['System design', 'Multi-tenancy', 'CI/CD', 'Observability', 'Documentation', 'AI-assisted workflow'] },
];

const reposFa = [
  { name: 'chakavak', description: 'موزیک‌پلیر چندسکویی با Flutter و تمرکز بر تجربه دسکتاپ و موبایل.', href: 'https://github.com/smae1993/chakavak', language: 'Flutter' },
  { name: 'hamresan', description: 'پروژه‌ای محصول‌محور برای تجربه معماری و توسعه سرتاسری.', href: 'https://github.com/smae1993/hamresan', language: 'Full-stack' },
  { name: 'glassy', description: 'کامپوننت‌ها و آزمایش‌های رابط کاربری شیشه‌ای برای Flutter.', href: 'https://github.com/smae1993/glassy', language: 'Dart' },
  { name: 'persian_pdf_to_excel', description: 'ابزار تبدیل داده‌های PDF فارسی به خروجی ساخت‌یافته Excel.', href: 'https://github.com/smae1993/persian_pdf_to_excel', language: 'Python' },
];
const reposEn = [
  { name: 'chakavak', description: 'A cross-platform Flutter music player built around desktop and mobile UX.', href: 'https://github.com/smae1993/chakavak', language: 'Flutter' },
  { name: 'hamresan', description: 'A product-oriented playground for end-to-end architecture and delivery.', href: 'https://github.com/smae1993/hamresan', language: 'Full-stack' },
  { name: 'glassy', description: 'Glassmorphism UI components and experiments for Flutter.', href: 'https://github.com/smae1993/glassy', language: 'Dart' },
  { name: 'persian_pdf_to_excel', description: 'A utility for converting Persian PDF data into structured Excel output.', href: 'https://github.com/smae1993/persian_pdf_to_excel', language: 'Python' },
];

const contactChannelsFa: ContactChannel[] = [
  { label: 'ایمیل', handle: 'smae1993@gmail.com', href: 'mailto:smae1993@gmail.com?subject=Project%20inquiry%20from%20portfolio', icon: 'email' },
  { label: 'لینکدین', handle: 'linkedin.com/in/smae1993', href: 'https://www.linkedin.com/in/smae1993/', icon: 'linkedin' },
  { label: 'تلگرام', handle: '@smae1993', href: 'https://t.me/smae1993', icon: 'telegram' },
  { label: 'اینستاگرام', handle: '@smae1993', href: 'https://www.instagram.com/smae1993/', icon: 'instagram' },
  { label: 'گیت‌هاب', handle: 'github.com/smae1993', href: 'https://github.com/smae1993', icon: 'github' },
];

const contactChannelsEn: ContactChannel[] = [
  { label: 'Email', handle: 'smae1993@gmail.com', href: 'mailto:smae1993@gmail.com?subject=Project%20inquiry%20from%20portfolio', icon: 'email' },
  { label: 'LinkedIn', handle: 'linkedin.com/in/smae1993', href: 'https://www.linkedin.com/in/smae1993/', icon: 'linkedin' },
  { label: 'Telegram', handle: '@smae1993', href: 'https://t.me/smae1993', icon: 'telegram' },
  { label: 'Instagram', handle: '@smae1993', href: 'https://www.instagram.com/smae1993/', icon: 'instagram' },
  { label: 'GitHub', handle: 'github.com/smae1993', href: 'https://github.com/smae1993', icon: 'github' },
];

export const fa: Copy = {
  locale: 'fa', dir: 'rtl', languageName: 'EN', alternateHref: '/',
  nav: [{ label: 'درباره من', href: '#about' }, { label: 'پروژه‌ها', href: '#projects' }, { label: 'تخصص‌ها', href: '#stack' }, { label: 'ثبت سفارش', href: '#contact' }],
  hero: { eyebrow: 'FULL-STACK ENGINEER · PRODUCT BUILDER · IOT', name: 'سید محمد امین عمرانی', title: 'محصولات دیجیتال را از یک ایده خام تا یک سیستم واقعی و قابل‌اتکا می‌سازم.', lead: 'مهندس نرم‌افزار فول‌استک با پس‌زمینه مهندسی الکترونیک؛ متمرکز بر معماری محصول، بک‌اند‌های مقیاس‌پذیر، تجربه کاربری دقیق، اپلیکیشن‌های چندسکویی و زیرساخت production.', primary: 'مشاهده پروژه‌ها', secondary: 'ثبت سفارش پروژه', availability: 'آماده همکاری روی پروژه‌های جدی', terminalTitle: 'amin@workstation — product-lab', terminalLines: ['$ whoami', 'full-stack engineer + product builder', '$ current_focus', 'Go · Next.js · Flutter · SaaS · IoT', '$ philosophy', 'ship useful things, not impressive demos.'] },
  metrics: [{ value: 'Web', label: 'محصولات سریع و SEO-friendly' }, { value: 'Mobile', label: 'اپ‌های واقعی Android و iOS' }, { value: 'Backend', label: 'API، معماری داده و امنیت' }, { value: 'DevOps', label: 'Docker، Linux و استقرار پایدار' }],
  about: { eyebrow: 'درباره من', title: 'بین محصول، کد و سخت‌افزار فکر می‌کنم.', body: ['من برنامه‌نویسی را فقط نوشتن کد نمی‌بینم. هر پروژه برای من از شناخت مسئله، طراحی جریان درست، انتخاب معماری مناسب و ساخت تجربه‌ای شروع می‌شود که واقعاً قابل استفاده باشد.', 'کارشناسی مهندسی الکترونیک دارم و در توسعه وب، موبایل، زیرساخت و سیستم‌های IoT کار کرده‌ام. این ترکیب کمک می‌کند مسائل را از رابط کاربری تا سرور، شبکه و دستگاه نهایی یکپارچه ببینم.'], cards: [{ title: 'مهندسی محصول', text: 'تبدیل مسئله کسب‌وکار به قابلیت‌های واضح، قابل‌اندازه‌گیری و قابل‌توسعه.', icon: 'product' }, { title: 'معماری سرتاسری', text: 'طراحی هماهنگ دیتابیس، API، پنل وب، اپ موبایل و زیرساخت.', icon: 'architecture' }, { title: 'نگاه Production', text: 'تست، مانیتورینگ، امنیت، نسخه‌بندی و دیپلوی از روز اول.', icon: 'production' }] },
  projects: { eyebrow: 'محصولات منتخب', title: 'پروژه‌هایی که فراتر از یک UI زیبا هستند.', intro: 'بخش عمده کارهای حرفه‌ای من محصولات خصوصی و در حال توسعه‌اند. این نمونه‌ها گستره تجربه من در SaaS، فین‌تک، ابزارهای کسب‌وکار و سیستم‌های چندسکویی را نشان می‌دهند.', privateLabel: 'محصول خصوصی', visitLabel: 'مشاهده', items: faProjects },
  stack: { eyebrow: 'جعبه ابزار', title: 'تکنولوژی را بر اساس مسئله انتخاب می‌کنم.', intro: 'تمرکز من روی ابزارهایی است که تیم را سریع‌تر می‌کنند، نگهداری بلندمدت را ساده نگه می‌دارند و در production قابل اعتمادند.', groups: stackGroups },
  process: { eyebrow: 'روش کار', title: 'از ابهام تا محصول قابل استفاده.', steps: [{ number: '01', title: 'صورت‌بندی مسئله', text: 'کاربر، جریان اصلی، محدودیت‌ها و معیار موفقیت را قبل از انتخاب تکنولوژی روشن می‌کنم.' }, { number: '02', title: 'طراحی معماری', text: 'مرز سرویس‌ها، مدل داده، قرارداد API و مسیر تکامل محصول را مشخص می‌کنم.' }, { number: '03', title: 'ساخت عمودی', text: 'یک جریان کامل از UI تا دیتابیس را زود می‌سازم تا ریسک‌های واقعی آشکار شوند.' }, { number: '04', title: 'آماده‌سازی Production', text: 'تست، امنیت، لاگ، بکاپ، دیپلوی و مستندات را بخشی از محصول می‌دانم.' }] },
  openSource: { eyebrow: 'کدهای عمومی', title: 'آزمایشگاه متن‌باز من در GitHub.', intro: 'کنار محصولات خصوصی، نمونه‌ها و ابزارهای کوچکی را برای یادگیری، آموزش و اشتراک تجربه منتشر می‌کنم.', repos: reposFa, allRepos: 'مشاهده همه ریپوها' },
  contact: { eyebrow: 'ثبت سفارش و همکاری', title: 'برای ساخت یک محصول جدی آماده‌ام.', text: 'برای توسعه MVP، معماری سیستم، ساخت وب‌اپ یا اپلیکیشن، DevOps و پروژه‌های IoT پیام بدهید. بهتر است در پیام اولیه، مسئله، محدوده کار، زمان‌بندی و بودجه تقریبی را بنویسید.', primary: 'ارسال درخواست با ایمیل', copy: 'کپی ایمیل', copied: 'کپی شد', responseNote: 'برای هماهنگی سریع‌تر می‌توانید از تلگرام یا لینکدین هم پیام بدهید.', channels: contactChannelsFa },
  footer: 'طراحی و توسعه با Astro — سریع، سبک و آماده GitHub Pages.',
  commands: { placeholder: 'یک بخش را انتخاب کنید…', close: 'بستن', items: [{ label: 'رفتن به پروژه‌ها', href: '#projects', hint: 'P' }, { label: 'مشاهده تخصص‌ها', href: '#stack', hint: 'S' }, { label: 'ثبت سفارش پروژه', href: '#contact', hint: 'O' }, { label: 'ارسال ایمیل', href: 'mailto:smae1993@gmail.com?subject=Project%20inquiry%20from%20portfolio', hint: 'E' }, { label: 'باز کردن لینکدین', href: 'https://www.linkedin.com/in/smae1993/', hint: 'L' }] },
};

export const en: Copy = {
  locale: 'en', dir: 'ltr', languageName: 'FA', alternateHref: '/fa/',
  nav: [{ label: 'About', href: '#about' }, { label: 'Projects', href: '#projects' }, { label: 'Stack', href: '#stack' }, { label: 'Start a project', href: '#contact' }],
  hero: { eyebrow: 'FULL-STACK ENGINEER · PRODUCT BUILDER · IOT', name: 'Sayed Mohammad Amin Emrani', title: 'I turn raw ideas into dependable digital products.', lead: 'A full-stack software engineer with an electronics background, focused on product architecture, scalable backends, thoughtful user experience, cross-platform apps, and production infrastructure.', primary: 'Explore my work', secondary: 'Start a project', availability: 'Open to ambitious collaborations', terminalTitle: 'amin@workstation — product-lab', terminalLines: ['$ whoami', 'full-stack engineer + product builder', '$ current_focus', 'Go · Next.js · Flutter · SaaS · IoT', '$ philosophy', 'ship useful things, not impressive demos.'] },
  metrics: [{ value: 'Web', label: 'Fast, accessible and SEO-ready' }, { value: 'Mobile', label: 'Real Android and iOS products' }, { value: 'Backend', label: 'APIs, data architecture and security' }, { value: 'DevOps', label: 'Docker, Linux and reliable delivery' }],
  about: { eyebrow: 'About me', title: 'I think across product, software, and hardware.', body: ['I do not see software development as merely writing code. Every project starts with understanding the problem, shaping the right flows, selecting a maintainable architecture, and building an experience people can actually use.', 'I hold a B.Sc. in Electronics Engineering and have worked across web, mobile, infrastructure, and IoT. That mix helps me reason from the interface down to servers, networks, and connected devices.'], cards: [{ title: 'Product engineering', text: 'Turning business problems into clear, measurable, and evolvable capabilities.', icon: 'product' }, { title: 'End-to-end architecture', text: 'Designing the database, API, web console, mobile app, and infrastructure as one system.', icon: 'architecture' }, { title: 'Production mindset', text: 'Testing, monitoring, security, versioning, and delivery from day one.', icon: 'production' }] },
  projects: { eyebrow: 'Selected products', title: 'Work that goes beyond a polished interface.', intro: 'Most of my professional work is private and actively evolving. These products show my experience across SaaS, fintech, business tooling, and cross-platform systems.', privateLabel: 'Private product', visitLabel: 'Visit', items: enProjects },
  stack: { eyebrow: 'Toolkit', title: 'I choose technology around the problem.', intro: 'I prefer tools that accelerate teams, remain maintainable, and behave predictably in production.', groups: stackGroups },
  process: { eyebrow: 'Process', title: 'From ambiguity to a usable product.', steps: [{ number: '01', title: 'Frame the problem', text: 'Clarify users, critical flows, constraints, and success criteria before choosing a stack.' }, { number: '02', title: 'Design the system', text: 'Define service boundaries, data models, API contracts, and the product evolution path.' }, { number: '03', title: 'Build vertically', text: 'Ship one complete flow from interface to database early to reveal the real risks.' }, { number: '04', title: 'Productionize', text: 'Treat testing, security, logging, backups, deployment, and documentation as product work.' }] },
  openSource: { eyebrow: 'Public code', title: 'My open-source laboratory on GitHub.', intro: 'Alongside private products, I publish experiments and smaller tools for learning, teaching, and sharing experience.', repos: reposEn, allRepos: 'View all repositories' },
  contact: { eyebrow: 'Start a project', title: 'Let’s build something serious.', text: 'Reach out for MVP development, system architecture, web or mobile apps, DevOps, and IoT work. A useful first message includes the problem, expected scope, target timeline, and an approximate budget.', primary: 'Send a project inquiry', copy: 'Copy email', copied: 'Copied', responseNote: 'Telegram and LinkedIn are usually the fastest ways to start a conversation.', channels: contactChannelsEn },
  footer: 'Designed and built with Astro — fast, lightweight, and ready for GitHub Pages.',
  commands: { placeholder: 'Choose a destination…', close: 'Close', items: [{ label: 'Go to projects', href: '#projects', hint: 'P' }, { label: 'Explore stack', href: '#stack', hint: 'S' }, { label: 'Start a project', href: '#contact', hint: 'O' }, { label: 'Send an email', href: 'mailto:smae1993@gmail.com?subject=Project%20inquiry%20from%20portfolio', hint: 'E' }, { label: 'Open LinkedIn', href: 'https://www.linkedin.com/in/smae1993/', hint: 'L' }] },
};
