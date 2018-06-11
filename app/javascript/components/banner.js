import Typed from 'typed.js';

function loadDynamicBannerText() {
  if (document.getElementById("#banner-typed-text")) {
    new Typed('#banner-typed-text', {
      strings: ["Express gratitude, be happy.", "Match on this amazing frequency."],
      typeSpeed: 50,
      loop: true
    });
  }
}

export { loadDynamicBannerText };
