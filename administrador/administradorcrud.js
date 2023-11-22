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

var cajas = document.getElementsByName("caja[]");

function insertarTabla() {
  var fila = "<tr></tr>";
  for (key = 0; key < cajas.length; key++)
    fila =
      fila.substring(0, fila.length - 5) +
      "<td>" +
      cajas[key].value +
      "</td>" +
      fila.substring(fila.length - 5);

  var elementoTR = document.createElement("tr");
  elementoTR.innerHTML = fila;
  document.getElementById("miTabla").appendChild(elementoTR);
}
    
function cuantasFilas() {
  var cantidadFilas = document.getElementById("miTabla").rows.length;
  document.getElementById("demo").innerHTML =
    "Hay " + cantidadFilas + " incidencias.";
  var valoresAula = document.getElementById("aula").value;

  /* Empezamos sin valores */
  let resultados = {};
  /* Buscamos las primeras columnas de cada fila */
  let elementos = document.querySelectorAll(
    "table tbody tr > td:nth-child(1)"
  );
  elementos.forEach(elemento => {
    if (resultados.hasOwnProperty(elemento.innerText)) {
      resultados[elemento.innerText]++;
    } else {
      resultados[elemento.innerText] = 1;
    }
  });
  console.log(resultados);
  for (let indice in resultados) {
    document.getElementById("demo2").innerHTML +=
      "Elemento \"" + indice + "\": repetido " +
      resultados[indice] + " veces<br>";
  };
}