'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "09ec9fb5a4490d16b597bc311fe65571",
"assets/AssetManifest.json": "98d1b79d004e99092bb33aeaaf6ce6a1",
"assets/assets/fonts/iran_yekan.ttf": "5760d5124d90dcd9e53ad0fb2df6cc8a",
"assets/assets/fonts/iran_yekan1.ttf": "686e6fe71aee810f04034bd9e5a65a71",
"assets/assets/images/amin.svg": "9a5e40b88bedc4f22c280abcbadeefd8",
"assets/assets/images/android_logo.png": "f45e43b37a000185743d5af9f2a0f4f3",
"assets/assets/images/bootstrap_logo.png": "9a32d343bf6addf9c07defad79f44d6f",
"assets/assets/images/csharp_logo.png": "dd479058e1f32f1a653078df9facc486",
"assets/assets/images/c_Logo.png": "623f8181c81323e831a831bd69b76d95",
"assets/assets/images/dart_logo.png": "8283a592f5463a2692b07e5440c9dfe1",
"assets/assets/images/device.png": "bce2ccb45be19eaf4808e5b3492bc06f",
"assets/assets/images/django_logo.png": "02711c2cf037c786ebb844af1328f809",
"assets/assets/images/espressif_logo.png": "1b1acb6c436aa0d414f1b683a68caa66",
"assets/assets/images/facebook.png": "f9ffe7a2f9b99179d795c5713ea35956",
"assets/assets/images/features.png": "339359daac16bc761942d731b9b69b69",
"assets/assets/images/flutter.svg": "9ffbb9ca3c2e5a2e6308363dfb092aab",
"assets/assets/images/flutter_logo.png": "e4b349baf61dd32c83ed699e3d2de891",
"assets/assets/images/github.png": "3d4c7482f267f5accbb7461766f3f790",
"assets/assets/images/gmail.png": "90ec3493f9b27736690ce801b6c08586",
"assets/assets/images/grayShield.png": "03572ebb335a54a2dd9176bebe629e7d",
"assets/assets/images/greenShield.png": "90cded1341045d88e0f57df7e13091ca",
"assets/assets/images/home.png": "b2d3c123335c5182ff2f059166adef17",
"assets/assets/images/hourGlass.png": "6600867062add27c449fad06d4884224",
"assets/assets/images/instagram.png": "5c570427ee23f69853d28aec805eee79",
"assets/assets/images/javascript_logo.png": "d5ee029a5980fc1e164d078b7801f2bb",
"assets/assets/images/java_logo.png": "74e943d82452f81f6a0bb0b51ac6785d",
"assets/assets/images/kotlin_logo.png": "9fd64ac027214b5bc7d8aa4630cf97a4",
"assets/assets/images/lampOff.png": "03a8ee978405201bb77431ed81c149e6",
"assets/assets/images/lampOn.png": "fc5802b25a35b9eeb6c38db483f3c3bd",
"assets/assets/images/laravel_logo.png": "f6d7a49d63d88e72f3f1ecd0dc6b350c",
"assets/assets/images/linkedin.png": "7f0d7d11b35f84bc19971f8e39623f96",
"assets/assets/images/logo.png": "87d346792943f75fdbe531fdbfef2b34",
"assets/assets/images/LogoEnglish.svg": "4a93516e76abe4a3985f77a3b64ac52b",
"assets/assets/images/microsoft_logo.png": "ad08df7ff93bf41d357ae9a3166678ab",
"assets/assets/images/music.png": "fd310f2278d6efdb0f90c289cb37a55b",
"assets/assets/images/noEntry.png": "389502919c95ea26c495d914f22ae439",
"assets/assets/images/php_logo.png": "2f25435199bbd8e6764a00df6bf4b28e",
"assets/assets/images/projects/1.png": "840018f32dc75523cef44ac864c6eb6d",
"assets/assets/images/projects/2.png": "20fbe19483f53a1848be2c065e272e5b",
"assets/assets/images/projects/3.png": "8ccfcb946c691aa697e916d298a8f4b4",
"assets/assets/images/projects/4.png": "e6024b05f93c4dbcc1ef2ab73843f125",
"assets/assets/images/projects/5.png": "7bffa88986bc2b8a81f43fe428da7255",
"assets/assets/images/projects/6.png": "a2f7346c51b5e2037058d0a047739482",
"assets/assets/images/projects/7.png": "08df7faed954d72bfd073420438c4af8",
"assets/assets/images/projects/8.png": "888edee015d67574cd7d72a2c23cf100",
"assets/assets/images/projects/9.png": "8e3b8550b73862040dc8cd5950ed889b",
"assets/assets/images/projects/screens/3621_1.png": "3c9bb43af5de3fecd19482cb00b25065",
"assets/assets/images/projects/screens/3621_2.png": "c3c677bb8053f8a2631a6379ef15072c",
"assets/assets/images/projects/screens/3621_3.jpg": "93f7a669c2413a09b16c0f6e83c4bbdc",
"assets/assets/images/projects/screens/3621_4.jpg": "502901ab50cd13b98ba113db948470c5",
"assets/assets/images/projects/screens/3621_t_1.png": "bdb981fe801881d1d1904279216ca8f2",
"assets/assets/images/projects/screens/3621_t_2.png": "d662b138f0427a6e78df4774598d81df",
"assets/assets/images/projects/screens/3621_t_3.png": "2c0383f333c251c1f29c31e0e16ae38c",
"assets/assets/images/projects/screens/3621_t_4.jpg": "2e4b47eeb37ec6f6b77777976865f98a",
"assets/assets/images/projects/screens/dh_0.png": "e78bb42decdd6a1b4898d2194386a5e0",
"assets/assets/images/projects/screens/dh_1.jpg": "1a961eb758b34da0b73e43bfc67361f3",
"assets/assets/images/projects/screens/na_1.png": "871873aba6b79f9b321a83e2a87d6b94",
"assets/assets/images/projects/screens/na_2.png": "d6392db555d13561235a9e85a8023400",
"assets/assets/images/projects/screens/na_3.png": "bffd1a32b08fb2ee8f424ea155030ff8",
"assets/assets/images/projects/screens/na_4.png": "df56408b6e499dbb9ddd6dc354bf4de6",
"assets/assets/images/projects/screens/na_5.png": "d9d8a46b0db51b83cd9e4788532d7008",
"assets/assets/images/projects/screens/na_6.png": "fc4391e865d904943ebf646ec46add8f",
"assets/assets/images/projects/screens/na_7.png": "18e114ef9e18964f378182e327e586a6",
"assets/assets/images/projects/screens/na_8.png": "26e83bd087a83e230141d5e5b8e0f5ad",
"assets/assets/images/projects/screens/na_9.png": "c4adbf627a07a850eacd7e2c1952ea98",
"assets/assets/images/projects/screens/nf_0.png": "ffec3aca27b3a3d0317c8af672f2a70f",
"assets/assets/images/projects/screens/nf_1.png": "0552b9a0b17f1d8bf6e484afe627952f",
"assets/assets/images/projects/screens/nf_2.png": "9ef3cf280a146bd1feec43753ce9f959",
"assets/assets/images/projects/screens/nf_3.png": "f72e21b18f126a9e1d38c396dadb0d80",
"assets/assets/images/projects/screens/nf_4.png": "f657863b97bafbb6f590556e5d3bb44d",
"assets/assets/images/projects/screens/nl_0.jpg": "dd5b97496b4a57fb2c7268eb8f6371d7",
"assets/assets/images/projects/screens/nl_1.jpg": "3340a96d8afcd2f37aa1e0d5781bf62e",
"assets/assets/images/projects/screens/nl_2.jpg": "4f3494be537b199f5486b5ecf3f96489",
"assets/assets/images/projects/screens/nl_3.jpg": "7af4b90c26403b47e518c9fd41d5e7f8",
"assets/assets/images/projects/screens/nl_4.jpg": "b88e953c57edd207084fe1d8742482be",
"assets/assets/images/python_logo.png": "8c06b458bd5520fd9d7d2001e3dee79a",
"assets/assets/images/react_logo.png": "9bd23c462e66e5f6e2531a195f4d797b",
"assets/assets/images/redShield.png": "c4d7af755bb61199983a7e1245bff0c1",
"assets/assets/images/resume.svg": "ed49fa6aecb0fb5da42279dc5c8cc6c7",
"assets/assets/images/scenario.png": "929d904a1b67cd849d84d650ef23ece1",
"assets/assets/images/skype.png": "8b249bd03df5855f6b98759427d8a74b",
"assets/assets/images/smartScenario.png": "e1487674b6e1be0e99a55511fa8b2c11",
"assets/assets/images/sms.png": "181514cc6eaf7e924a46030e2937256c",
"assets/assets/images/tailwind_logo.png": "74f00e32baceccf4de6809a688afd58a",
"assets/assets/images/telegram.png": "d9b5a5ebc2d134e9f6b1b0115899e607",
"assets/assets/images/telephone.png": "e32444726264e197038d4e56a63758f1",
"assets/assets/images/whatsapp.png": "8b357b47f00b0b898a8ba58203557582",
"assets/FontManifest.json": "aca3b218ae30087b039ade6a6eb3b190",
"assets/fonts/MaterialIcons-Regular.otf": "9b4de0b864c89d76b79f9669b2396359",
"assets/NOTICES": "ed192fcb9a6e4f99d7b58c878f0ffadf",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"canvaskit/canvaskit.js": "bbf39143dfd758d8d847453b120c8ebb",
"canvaskit/canvaskit.wasm": "42df12e09ecc0d5a4a34a69d7ee44314",
"canvaskit/chromium/canvaskit.js": "96ae916cd2d1b7320fff853ee22aebb0",
"canvaskit/chromium/canvaskit.wasm": "be0e3b33510f5b7b0cc76cc4d3e50048",
"canvaskit/skwasm.js": "95f16c6690f955a45b2317496983dbe9",
"canvaskit/skwasm.wasm": "1a074e8452fe5e0d02b112e22cdcf455",
"canvaskit/skwasm.worker.js": "51253d3321b11ddb8d73fa8aa87d3b15",
"favicon.png": "ebe36b793ca786f9f657c58935592026",
"flutter.js": "6b515e434cea20006b3ef1726d2c8894",
"icons/Icon-192.png": "2d757c8554f64b0ac0714b16efae47da",
"icons/Icon-512.png": "a8dc91d1504d893390c13db74983252c",
"icons/Icon-maskable-192.png": "b115976265c7308322397ca12c885885",
"icons/Icon-maskable-512.png": "97054c0d49987c12fbafa8953edb58af",
"icons/logo.png": "87d346792943f75fdbe531fdbfef2b34",
"index.html": "a42ee225af367e2642518c20842d43f4",
"/": "a42ee225af367e2642518c20842d43f4",
"main.dart.js": "2c9f1987fe2ef5a29e2767ec017cbfa1",
"manifest.json": "d308ccd64b8e3c5b79566a3e8fe30ee3",
"version.json": "fadd8ab58796344158bb6e39f23ff35f"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
