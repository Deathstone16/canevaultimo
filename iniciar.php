
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://cdn.jsdelivr.net/npm/swiffy-slider@1.6.0/dist/js/swiffy-slider.min.js" crossorigin="anonymous"
        defer></script>
    <link href="https://cdn.jsdelivr.net/npm/swiffy-slider@1.6.0/dist/css/swiffy-slider.min.css" rel="stylesheet"
        crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
    <link rel="stylesheet" type="text/css" href="C:\xampp\htdocs\prueba\css\estilos.css">

</head>

<body>
    <div class="menu">

        <div class="presentacion">
            <img src="/iconos/Simple Minimalist Real Estate Logo (1).png" class="logo-presentacion" alt="">
            <div class="contactos">
                <img src="/iconos/simbolo-de-la-aplicacion-de-facebook (1).png" id="face" class="logo-redes" alt="">
                <img src="/iconos/instagram.png" class="logo-redes" alt="">
                <img src="/iconos/whatsapp (1).png" class="logo-redes" alt="">
            </div>
        </div>
        <nav class="navbar">
            <ul class="nav-links">
                <li class="link">
                    <a href="#busquedasid" class="item1">Buscar</a>
                </li>
                <li class="link">
                    <a href="#inmuebles-ventas" class="item2">Inmuebles</a>

                </li>
                <li class="link">
                    <a href="#sobrenos" class="item2">Sobre Nosotros</a>
                </li>
                <li class="link">
                    <a href="#contactarnos" class="item3">Contactos</a>
                </li>
                <li class="link">
                    <a href="/login/login.html" class="item4">Ingresar</a>
                </li>
            </ul>
        </nav>

    </div>

    <section class="busquedas" id="busquedasid">
        <div class="buscardores">
            <div class="ingresos">
                <div class="buscando">
                    <input type="text" placeholder="Buscar">
                </div>
                <div class="botonbuscar">
                    <button>Buscar</button>
                </div>
            </div>
        </div>



        <div class="filtros2">
            <nav class="sub_menu_hambur">
                <a href="">Filtros</a>
                <ul class="submenu">
                    <li><a href="#">zona</a></li>
                    <li><a href="#">tipo</a></li>
                    <li><a href="#">ambientes</a></li>
                </ul>
            </nav>

        </div>
        <div class="contenedor">
            <div class="slider1">
                <div class="swiffy-slider slider-item-ratio slider-item-ratio-16x9 slider-nav-animation slider-nav-animation-fadein"
                    id="swiffy-animation">
                    <ul class="slider-container">
                        <li><img src="/imagenes/departamento_movible11.jpg" loading="lazy" alt="..."></li>
                        <li><img src="/imagenes/departamento_movible22.jpg" loading="lazy" alt="..."></li>
                        <li><img src="/imagenes/departamento_movible33.jpg" loading="lazy" alt="..."></li>
                        <li><img src="/imagenes/departamento_movible44.jpg" loading="lazy" alt="..."></li>
                    </ul>

                    <button type="button" class="slider-nav" aria-label="Go left"></button>
                    <button type="button" class="slider-nav slider-nav-next" aria-label="Go left"></button>

                    <div class="slider-indicators slider-indicators-square d-none d-md-flex">
                        <button class="" aria-label="Go to slide"></button>
                        <button aria-label="Go to slide"></button>
                        <button aria-label="Go to slide" class="active"></button>
                        <button aria-label="Go to slide"></button>
                    </div>

                    <div
                        class="slider-indicators slider-indicators-sm slider-indicators-dark slider-indicators-round d-md-none slider-indicators-highlight">
                        <button class="" aria-label="Go to slide"></button>
                        <button aria-label="Go to slide"></button>
                        <button aria-label="Go to slide" class="active"></button>
                        <button aria-label="Go to slide"></button>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="inmbuebles-muestra" id="inmuebles-ventas">
        <div class="titulo1">
            <a id="inmueblesnav"></a>
            <h2>Inmuebles</h2>

        </div>


        <div class="swiper contenedor">
            <div class="swiper-wrapper content">
                <div class="swiper-slide card">
                    <div class="card-content">
                        <div class="card-image">
                            <img src="/imagenes/cards22.jpg" alt="">
                        </div>
                        <div class="card-text">
                            <h3>departamento</h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eaque neque corrupti commodi
                                temporibus adipisci quis optio praesentium magnam facilis fuga.</p>
                        </div>
                        <a href="#">Contactar</a>
                    </div>
                </div>
                <div class="swiper-slide card">
                    <div class="card-content">
                        <div class="card-image">
                            <img src="/imagenes/cards11.jpg" alt="">
                        </div>
                        <div class="card-text">
                            <h3>departamento</h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eaque neque corrupti commodi
                                temporibus adipisci quis optio praesentium magnam facilis fuga.</p>
                        </div>
                        <a href="#">Contactar</a>
                    </div>
                </div>
                <div class="swiper-slide card">
                    <div class="card-content">
                        <div class="card-image">
                            <img src="/imagenes/cards33.jpg" alt="">
                        </div>
                        <div class="card-text">
                            <h3>departamento</h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eaque neque corrupti commodi
                                temporibus adipisci quis optio praesentium magnam facilis fuga.</p>
                        </div>
                        <a href="#">Contactar</a>
                    </div>
                </div>
                <div class="swiper-slide card">
                    <div class="card-content">
                        <div class="card-image">
                            <img src="/imagenes/cards44.jpg" alt="">
                        </div>
                        <div class="card-text">
                            <h3>departamento</h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eaque neque corrupti commodi
                                temporibus adipisci quis optio praesentium magnam facilis fuga.</p>
                        </div>
                        <a href="#">Contactar</a>
                    </div>
                </div>
                <div class="swiper-slide card">
                    <div class="card-content">
                        <div class="card-image">
                            <img src="/imagenes/cards55.jpg" alt="">
                        </div>
                        <div class="card-text">
                            <h3>departamento</h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eaque neque corrupti commodi
                                temporibus adipisci quis optio praesentium magnam facilis fuga.</p>
                        </div>
                        <a href="#">Contactar</a>
                    </div>
                </div>
            </div>
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

    </section>

    <section class="sobrenos" id="sobrenos">

        <div class="about">
            <a id="aboutnav"></a>
            <img src="/imagenes/logo ejemp.jpg" class="img-about">
            <div class="texto-about">
                <h3 class="titulo2">Sobre nosotros</h3>
                <p>Somos un grupo familiar que aspira a construir y
                    desarrollar el espacio para el crecimiento de la comunidad
                    local dando la mejor respuesta a las necesidades e
                    inquietudes de nuestros clientes; asesorando en la
                    compraventa y administración de inmuebles en su aspecto
                    físico, jurídico y financiero.</p>
            </div>
        </div>

    </section>

    <section class="contactarnos" id="contactarnos">

        <div class="formulario-padre">
            <h2 class="contactarse">Contactanos</h2>
            <div class="fondo_form">
                <div class="formulax">
                    <h2 class="Envieformi">Envie su formulario</h2>
                    <div class="felx-conteiner">
                        <form class="form_mensaje" action="https://formsubmit.co/leonelformoselle@gmail.com"
                            method="POST">
                            <label for="Nombre">Nombre</label>
                            <input type="text" name="name">

                            <label for="email">Email</label>
                            <input type="text" name="email">

                            <label for="subject">Asuntos</label>
                            <input type="text" name="subject">

                            <label for="comments">Comentario</label>
                            <textarea name="comments" cols="15" rows="5"></textarea>

                            <input class="mensaje_mail" type="submit" value="Enviar">
                        </form>

                    </div>
                </div>
                <div class="contacto-info">
                    <div class="infocontact">
                        <ul>
                            <li><img class="icono-form" src="/iconos//correo.png" alt="">canevahnos@gmai.com</li>
                            <li><img class="icono-form" src="/iconos/telefono.png" alt="">3624-452568</li>
                            <li><img class="icono-form" src="/iconos/mapa.png" alt="">Av.Alverdi 244</li>
                        </ul>
                    </div>
                    <div class="logo-contact-redes">

                    </div>
                </div>
                <div class="mapa">
                    <iframe
                        src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d3985.663716418136!2d-58.986633287900275!3d-27.451338191097964!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1ses-419!2sar!4v1698318361319!5m2!1ses-419!2sar"
                        allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>

            </div>
        </div>
    </section>
    <script src="/main.js"></script>
</body>

</html>