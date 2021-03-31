var staticCacheName = "pwa-v" + new Date().getTime();
var filesToCache = [
    '/offline',
    '/manifest.json',
    '/frontend/css/bootstrap.min.css',
    '/frontend/css/font-awesome.min.css',
    '/frontend/css/animate.css',
    '/frontend/css/prettyPhoto.css',
    '/frontend/css/price-range.css',
    '/frontend/css/main.css',
    '/frontend/css/responsive.css',
    '/frontend/css/sweetalert.css',
    '/frontend/css/lightslider.css',
    '/frontend/css/prettify.css',
    '/frontend/css/jquery-ui.css',
    '/frontend/css/lightgallery.min.css',
    '/frontend/css/slick.css',
    '/frontend/js/jquery.js',
    '/frontend/js/bootstrap.min.js',
    '/frontend/js/jquery.scrollUp.min.js',
    '/frontend/js/price-range.js',
    '/frontend/js/jquery.prettyPhoto.js',
    '/frontend/js/main.js',
    '/frontend/js/sweetalert.min.js',
    '/frontend/js/lightslider.js',
    '/frontend/js/prettify.js',
    '/frontend/js/lightgallery-all.min.js',
    '/frontend/js/jquery-ui.js',
    '/frontend/js/js-cloudimage-360-view.min.js',
    '/frontend/js/slick.min.js',
    '/frontend/images/vshop.png',
    '/frontend/images/samsung-galaxy-note-10-plus-silver-new-org.jpg',
    '/frontend/images/samsung-galaxy-m51-white-600x600-400x400.jpg',
    '/frontend/images/iphone-12-pro-max-195420-015420-400x400.jpg',
    '/frontend/images/oppo-a31-2020-128gb-den-600x600-1-400x400.jpg',
    '/frontend/fonts/fontawesome-webfont.woff?v=4.0.3',
    '/frontend/images/searchicon.png',
    '/images/icons/icon-72x72.png',
    '/images/icons/icon-96x96.png',
    '/images/icons/icon-128x128.png',
    '/images/icons/icon-144x144.png',
    '/images/icons/icon-152x152.png',
    '/images/icons/icon-192x192.png',
    '/images/icons/icon-384x384.png',
    '/images/icons/icon-512x512.png',

];

// Cache on install
self.addEventListener("install", event => {
    this.skipWaiting();
    event.waitUntil(
        caches.open(staticCacheName)
            .then(cache => {
                return cache.addAll(filesToCache);
            })
    )
});

// Clear cache on activate
self.addEventListener('activate', event => {
    event.waitUntil(
        caches.keys().then(cacheNames => {
            return Promise.all(
                cacheNames
                    .filter(cacheName => (cacheName.startsWith("pwa-")))
                    .filter(cacheName => (cacheName !== staticCacheName))
                    .map(cacheName => caches.delete(cacheName))
            );
        })
    );
});

// Serve from Cache
self.addEventListener("fetch", event => {
    event.respondWith(
        caches.match(event.request)
            .then(response => {
                return response || fetch(event.request);
            })
            .catch(() => {
                return caches.match('offline');
            })
    )
});