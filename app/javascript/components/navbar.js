// app/javascript/components/navbar.js
function initUpdateNavbarOnScroll() {
  const navbar = document.querySelector('.navbar-wagon');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight * 2 ) {
        navbar.classList.add('navbar-wagon-main-color');
      } else {
        navbar.classList.remove('navbar-wagon-main-color');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
