// app/javascript/components/navbar.js
function initUpdateNavbarOnScroll() {
  const container = document.querySelectorAll('.home-container');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        container.classList.add('home-container-red');
      } else if (window.scrollY >= window.innerHeight * 2) {
        container.classList.add('home-container-black');
      }
      else {
        container.classList.remove('home-container-black');
        container.classList.remove('home-container-red');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
