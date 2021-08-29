'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "8336d717e2c1ddcde7cad78619f3d903",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "eaed33dc9678381a55cb5c13edaf241d",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "ffed6899ceb84c60a1efa51c809a57e4",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "3241d1d9c15448a4da96df05f3292ffe",
"assets/packages/scaffold_widget/assets/icons/strawberries.jpg": "3973d9caa263b987dd4671b418961869",
"assets/packages/scaffold_widget/assets/icons/blueberries.jpg": "1f068241413b57a7f25ca445aa9dc81e",
"assets/packages/scaffold_widget/assets/icons/kiwi.png": "d5b54cdac2c656de97036b36dca96356",
"assets/packages/scaffold_widget/assets/icons/ornge_sliced.jpg": "1ebdd9e430a020475dafbf6078275bb7",
"assets/packages/scaffold_widget/assets/icons/pineapple.png": "8158e0ba99a360cf39f475c9f6d92af9",
"assets/packages/scaffold_widget/assets/icons/orange.jpg": "95d810ffdecf778e2f6a3244db51806c",
"assets/packages/scaffold_widget/assets/icons/coconut.jpg": "e5eca3a5e73c048a42bd69e04f2f6fb7",
"assets/packages/scaffold_widget/assets/icons/apple.jpg": "7a800dcfec735bb8c6924efe137d2b02",
"assets/packages/scaffold_widget/assets/icons/pear.jpg": "def0a96c2cc62deb354ec8797f5361c3",
"assets/packages/scaffold_widget/assets/icons/grapes_green.jpg": "33ae392d897e488152c8a19efc626a1d",
"assets/packages/scaffold_widget/assets/icons/kiwi.jpg": "f184e3afc018a0a4b1f59933a2efe77e",
"assets/packages/scaffold_widget/assets/icons/banana.jpg": "a7732e4aeac77e06deb6ff15fe2afcd1",
"assets/packages/scaffold_widget/assets/icons/cherries.jpg": "55f4b05a59967b75081a0a29dbb68eb3",
"assets/packages/scaffold_widget/assets/icons/grapes_red.jpg": "7372bff23e91310152f0199fe45bc137",
"assets/packages/scaffold_widget/assets/icons/pawpaw.jpg": "faa0ded480118f18f0fae3a7539a6d30",
"assets/packages/scaffold_widget/assets/icons/watermelon.jpg": "32a53c38d16dade38ba765d03a9b2747",
"assets/packages/scaffold_widget/assets/images/strawberries.jpg": "b9e6ed6503e3af83e38b7fd8d9741575",
"assets/packages/scaffold_widget/assets/images/blueberries.jpg": "a7ad6b2c055123ebf9b3d52526c52f7e",
"assets/packages/scaffold_widget/assets/images/mixed_fruit.jpg": "e27c9fdc4042435d43c31a903d25c8e7",
"assets/packages/scaffold_widget/assets/images/orange.jpg": "b1c288ee67acba492ad98bc88b327cc0",
"assets/packages/scaffold_widget/assets/images/coconut.jpg": "219f7f284470212e2006dd293c0268fe",
"assets/packages/scaffold_widget/assets/images/apple.jpg": "56df89d04a4d10c7543fddb90addf4e5",
"assets/packages/scaffold_widget/assets/images/pear.jpg": "1b0a6422bd6ab5805246506f3ffbb5bd",
"assets/packages/scaffold_widget/assets/images/grapes_green.jpg": "dbd369af1688c731b7fa2cabe5ed43f7",
"assets/packages/scaffold_widget/assets/images/kiwi.jpg": "ab17612c9129d227f46b47e7d0384368",
"assets/packages/scaffold_widget/assets/images/banana.jpg": "37b491d87c00151ea7a89407c1b4bad2",
"assets/packages/scaffold_widget/assets/images/pinapple.jpg": "edd6ca67a82df0f818ca300f38ddaa46",
"assets/packages/scaffold_widget/assets/images/cherries.jpg": "2848a1e60044f0531d57bd6141ef3eb3",
"assets/packages/scaffold_widget/assets/images/grapes_red.jpg": "ba7707951b085d711eafa7a42b49eec8",
"assets/packages/scaffold_widget/assets/images/pawpaw.jpg": "66a86cfe5ce1823f4f489dddf0c49275",
"assets/packages/scaffold_widget/assets/images/watermelon.jpg": "af86e56aad9521f78cedeca0e3ba9baa",
"assets/packages/flutter_workbench/assets/images/sample_app_purple.png": "b34a670240d231d818e7f12cd1d86714",
"assets/packages/flutter_workbench/assets/images/sample_app_yellow.png": "33246bf5f28acaefa43447a319e072e3",
"assets/packages/flutter_workbench/assets/images/sample_app_red.png": "d8b5eeb5c72af949d3d2cdd43501ebf6",
"assets/packages/flutter_workbench/assets/images/sample_app_green.png": "e83a9f8eeecb5e8d9c419e2a472d904f",
"assets/packages/flutter_workbench/assets/images/sample_app_orange.png": "44855064d0a6c3c13df0d082065038ff",
"assets/packages/screen_tester/assets/images/todo_app_screen.png": "ea6b9954c66eec3fc5a259b95fc91c26",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/prototype_widget/assets/icons/strawberries.jpg": "3973d9caa263b987dd4671b418961869",
"assets/packages/prototype_widget/assets/icons/blueberries.jpg": "1f068241413b57a7f25ca445aa9dc81e",
"assets/packages/prototype_widget/assets/icons/kiwi.png": "d5b54cdac2c656de97036b36dca96356",
"assets/packages/prototype_widget/assets/icons/watermellon.jpg": "32a53c38d16dade38ba765d03a9b2747",
"assets/packages/prototype_widget/assets/icons/ornge_sliced.jpg": "1ebdd9e430a020475dafbf6078275bb7",
"assets/packages/prototype_widget/assets/icons/pineapple.png": "8158e0ba99a360cf39f475c9f6d92af9",
"assets/packages/prototype_widget/assets/icons/orange.jpg": "95d810ffdecf778e2f6a3244db51806c",
"assets/packages/prototype_widget/assets/icons/coconut.jpg": "e5eca3a5e73c048a42bd69e04f2f6fb7",
"assets/packages/prototype_widget/assets/icons/apple.jpg": "7a800dcfec735bb8c6924efe137d2b02",
"assets/packages/prototype_widget/assets/icons/pear.jpg": "def0a96c2cc62deb354ec8797f5361c3",
"assets/packages/prototype_widget/assets/icons/grapes_green.jpg": "33ae392d897e488152c8a19efc626a1d",
"assets/packages/prototype_widget/assets/icons/banana.jpg": "a7732e4aeac77e06deb6ff15fe2afcd1",
"assets/packages/prototype_widget/assets/icons/cherries.jpg": "55f4b05a59967b75081a0a29dbb68eb3",
"assets/packages/prototype_widget/assets/icons/grapes_red.jpg": "7372bff23e91310152f0199fe45bc137",
"assets/packages/prototype_widget/assets/icons/pawpaw.jpg": "faa0ded480118f18f0fae3a7539a6d30",
"assets/packages/prototype_widget/assets/images/strawberries.jpg": "b9e6ed6503e3af83e38b7fd8d9741575",
"assets/packages/prototype_widget/assets/images/pinapples.jpg": "edd6ca67a82df0f818ca300f38ddaa46",
"assets/packages/prototype_widget/assets/images/blueberries.jpg": "a7ad6b2c055123ebf9b3d52526c52f7e",
"assets/packages/prototype_widget/assets/images/watermellon.jpg": "af86e56aad9521f78cedeca0e3ba9baa",
"assets/packages/prototype_widget/assets/images/mixed_fruit.jpg": "e27c9fdc4042435d43c31a903d25c8e7",
"assets/packages/prototype_widget/assets/images/pears.jpg": "1b0a6422bd6ab5805246506f3ffbb5bd",
"assets/packages/prototype_widget/assets/images/coconut.jpg": "219f7f284470212e2006dd293c0268fe",
"assets/packages/prototype_widget/assets/images/apple.jpg": "56df89d04a4d10c7543fddb90addf4e5",
"assets/packages/prototype_widget/assets/images/grapes_green.jpg": "dbd369af1688c731b7fa2cabe5ed43f7",
"assets/packages/prototype_widget/assets/images/kiwi.jpg": "ab17612c9129d227f46b47e7d0384368",
"assets/packages/prototype_widget/assets/images/oranges.jpg": "b1c288ee67acba492ad98bc88b327cc0",
"assets/packages/prototype_widget/assets/images/banana.jpg": "37b491d87c00151ea7a89407c1b4bad2",
"assets/packages/prototype_widget/assets/images/cherries.jpg": "2848a1e60044f0531d57bd6141ef3eb3",
"assets/packages/prototype_widget/assets/images/grapes_red.jpg": "ba7707951b085d711eafa7a42b49eec8",
"assets/packages/prototype_widget/assets/images/pawpaw.jpg": "66a86cfe5ce1823f4f489dddf0c49275",
"assets/packages/prototype_widget/assets/screens/home/rated.png": "47869ca07ee620a2cbe81cef72206874",
"assets/packages/prototype_widget/assets/screens/home/banner.png": "1de047368267847c1c1610d2af68d51b",
"assets/packages/prototype_widget/assets/screens/home/favourite.png": "0957977a6892206b0b13964ff81702ae",
"assets/packages/prototype_widget/assets/screens/home/footer.png": "d93957f54376ee24e8812a4d7532612e",
"assets/packages/prototype_widget/assets/screens/home/details.png": "98b0fa5a38de095b8c8a7833107e2b10",
"assets/packages/prototype_widget/assets/screens/home/panels/details_heading.png": "8b59fbec1b24edd9259f2569eacb046d",
"assets/packages/prototype_widget/assets/screens/home/panels/trending_items.png": "4117111d224f386fd0a79c0d5a638ce2",
"assets/packages/prototype_widget/assets/screens/home/panels/favourite_items.png": "517ba3367cc90ccd2712059a756a19ee",
"assets/packages/prototype_widget/assets/screens/home/panels/favourite_heading.png": "7096e42932275188073831e16ae88bf8",
"assets/packages/prototype_widget/assets/screens/home/panels/rated_items.png": "aaa3e2c91b7ea4e1a1cafc5223cbedab",
"assets/packages/prototype_widget/assets/screens/home/panels/trending_heading.png": "3eabcbb02af7c7e42e4b7277847c0ccb",
"assets/packages/prototype_widget/assets/screens/home/panels/rated_heading.png": "043ef2eeeabb332fc44a03bbd83dffe7",
"assets/packages/prototype_widget/assets/screens/home/panels/details_items.png": "bfd1c9674a3f937b05b44f8bd9a640ed",
"assets/packages/prototype_widget/assets/screens/home/trending.png": "c560b62c8920da3c188d165bb385aac3",
"assets/packages/prototype_widget/assets/screens/favourites_screen.png": "b4a81bd7d0f6e7c6efc717b23c084df1",
"assets/packages/prototype_widget/assets/screens/rated_screen.png": "1de436e2c4330b15ac31f59a8b8fb5b0",
"assets/packages/prototype_widget/assets/screens/favourites/favourites_heading.png": "9c1a6def34defacb104365905e80b1f1",
"assets/packages/prototype_widget/assets/screens/favourites/favourites_body.png": "575efc9f1649eb8efea19e6a9cfd8dbf",
"assets/packages/prototype_widget/assets/screens/favourites/favourites_navigation.png": "61c62cd5d8bffdbbeeb42b7612117a4a",
"assets/packages/prototype_widget/assets/screens/home_screen.png": "7f8ae5eeae24b4ed7e033445123525b5",
"assets/packages/prototype_widget/assets/screens/trending_screen.png": "7a949f4ae748f62bb732b989c21cdf95",
"assets/NOTICES": "1bc401d2fec0797872d7643ef28d0fef",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"manifest.json": "db2be70e251c4a21b6da41a8b1df0d0a",
"version.json": "7f7648415ec53aea8ca0db6f86d67f9f",
"main.dart.js": "a3e158ba9c1a0198e994ab1b26dbbc20",
"index.html": "60c069bbda5b3b481940e6eca5710f3b",
"/": "60c069bbda5b3b481940e6eca5710f3b"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
