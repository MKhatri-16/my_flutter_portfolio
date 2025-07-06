'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "08bc8de8c2bd3a3395758011bb892622",
"assets/AssetManifest.bin.json": "78984b3edb2054a9aa12e82742c68b6d",
"assets/AssetManifest.json": "e59efc36e45daf8971c839d6f701c507",
"assets/assets/fonts/Helvetica_Neue/HelveticaNeueBlack.otf": "47fb372c5e2d5861921e6f4bad10d1f2",
"assets/assets/fonts/Helvetica_Neue/HelveticaNeueBlackItalic.otf": "9ac30e93cb5ad52cce1e23f8bed6f9b4",
"assets/assets/fonts/Helvetica_Neue/HelveticaNeueBold.otf": "b3ac1bd5e427f84b07373609c6e63d4a",
"assets/assets/fonts/Helvetica_Neue/HelveticaNeueBoldItalic.otf": "f19f9039068a3ebc719e0209858e02bc",
"assets/assets/fonts/Helvetica_Neue/HelveticaNeueHeavy.otf": "14ca62482b6a5ab8b4a6a1435cfe77e9",
"assets/assets/fonts/Helvetica_Neue/HelveticaNeueHeavyItalic.otf": "fd14c651ecfa7d2cb9486eebb9038f73",
"assets/assets/fonts/Helvetica_Neue/HelveticaNeueItalic.ttf": "775046e56b5ad830b9c225bdf20df8c9",
"assets/assets/fonts/Helvetica_Neue/HelveticaNeueLight.otf": "bfbaeacd0e20bdc3d9bb57e417b5e693",
"assets/assets/fonts/Helvetica_Neue/HelveticaNeueLightItalic.otf": "f7cb9cca893e7d934d10c8d02c89bfc6",
"assets/assets/fonts/Helvetica_Neue/HelveticaNeueMedium.otf": "3de700a4650f63d566ee3e19cf1d1511",
"assets/assets/fonts/Helvetica_Neue/HelveticaNeueMediumItalic.otf": "aa88ae2a7daaf691e1ad85e7f2c969a5",
"assets/assets/fonts/Helvetica_Neue/HelveticaNeueRoman.otf": "258453ba503b8013a7289e8a075a4553",
"assets/assets/fonts/Helvetica_Neue/HelveticaNeueThin.otf": "ca80734bc298d4cd768cfabaa667f66c",
"assets/assets/fonts/Helvetica_Neue/HelveticaNeueThinItalic.otf": "20a90f08fd9700f71eca39e0dd7645fc",
"assets/assets/fonts/Helvetica_Neue/HelveticaNeueUltraLight.otf": "7109af702174edb12f01b949fe4631ad",
"assets/assets/fonts/Helvetica_Neue/HelveticaNeueUltraLightItalic.otf": "95830abb5550d460c159cd8bb86e8663",
"assets/assets/images/muskan-removebg-preview.png": "19d418e7a4323481b6b0a75db331aa42",
"assets/assets/images/muskan.jpg": "b8b1283ba9c05b37431b4ef8677a15f8",
"assets/assets/images/muskan_nobg.png": "6b5e6384e1bcbf7324eee210212d89bd",
"assets/FontManifest.json": "05d240c1914bd7803bb7b6f3c8b03f04",
"assets/fonts/MaterialIcons-Regular.otf": "fcb1fec5d82d9d1f899767eb80430d16",
"assets/lang/en.json": "16450068a58d20d2057e0ecfcefc55dd",
"assets/NOTICES": "a7ec7a97d96ac824b578f1c8d8659924",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/packages/wechat_assets_picker/assets/icon/indicator-live-photos.png": "a96d2373c82eb49440e29d2fcbd21d37",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "728b2d477d9b8c14593d4f9b82b484f3",
"canvaskit/canvaskit.js.symbols": "bdcd3835edf8586b6d6edfce8749fb77",
"canvaskit/canvaskit.wasm": "7a3f4ae7d65fc1de6a6e7ddd3224bc93",
"canvaskit/chromium/canvaskit.js": "8191e843020c832c9cf8852a4b909d4c",
"canvaskit/chromium/canvaskit.js.symbols": "b61b5f4673c9698029fa0a746a9ad581",
"canvaskit/chromium/canvaskit.wasm": "f504de372e31c8031018a9ec0a9ef5f0",
"canvaskit/skwasm.js": "ea559890a088fe28b4ddf70e17e60052",
"canvaskit/skwasm.js.symbols": "e72c79950c8a8483d826a7f0560573a1",
"canvaskit/skwasm.wasm": "39dd80367a4e71582d234948adc521c0",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "83d881c1dbb6d6bcd6b42e274605b69c",
"flutter_bootstrap.js": "ef7a48932e66efbda07021d616cc6cce",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "9133211d2e2fea71a0db252a44884777",
"/": "9133211d2e2fea71a0db252a44884777",
"main.dart.js": "cc3b5a75a2a1ad4a5b3e86ec5586cfa2",
"manifest.json": "8542b4849da903a211dc6140ab03c23b",
"version.json": "81f3f6cf046aa3fd935033fcd513a40e"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
