
if (navigator.webkitStartDart) {
  navigator.webkitStartDart();
} else {
  var script = document.createElement('script');
  script.src = 'hello_packed.dart.precompiled.js';
  document.body.appendChild(script);
}
