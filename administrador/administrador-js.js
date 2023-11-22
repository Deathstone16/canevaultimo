var swiper = new Swiper('.swiper', {
    slidesPerView: 3,
    direction: getDirection(),
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },
    on: {
      resize: function () {
        swiper.changeDirection(getDirection());
      },
    },
  });
  
  function getDirection() {
    var windowWidth = window.innerWidth;
    var direction = window.innerWidth <= 760 ? 'vertical' : 'horizontal';
  
    return direction;
  }
  var linkHerramientas = document.getElementById("link-herramientas");
  var submenuHerramientas = document.getElementById("submenu-herramienta-id");

  // Agrega un event listener al enlace
  linkHerramientas.addEventListener("click", function(event) {
      // Evita que el enlace realice la acción predeterminada de navegación
      event.preventDefault();

      // Alterna entre las clases "visible" y "oculto"
      submenuHerramientas.classList.toggle("visible");

  });