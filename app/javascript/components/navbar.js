// app/javascript/components/navbar.js
function initUpdateNavbarOnScroll() {
  const navbar = document.querySelector('.navbar-wagon');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 10) {
        navbar.classList.add('navbar-wagon-main-color');
      } else {
        navbar.classList.remove('navbar-wagon-main-color');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
