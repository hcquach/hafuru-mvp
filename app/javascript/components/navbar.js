// app/javascript/components/navbar.js
function initUpdateNavbarOnScroll() {
  const navbar = document.querySelector('.navbar-wagon');
  const container = document.querySelectorAll('.home-container');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-wagon-black');
        container.classList.add('home-container-black');
      } else if (window.scrollY >= window.innerHeight * 2) {
        navbar.classList.add('navbar-wagon-red');
        container.classList.add('home-container-red');
      }
      else {
        navbar.classList.remove('navbar-wagon-black');
        navbar.classList.remove('navbar-wagon-red');
        container.classList.remove('home-container-black');
        container.classList.remove('home-container-red');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
