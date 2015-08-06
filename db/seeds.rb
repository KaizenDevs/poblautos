# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

PageContent.create(id: 1, title: '<h1 class="uppercase strong">Bienvenido a<br><span class="accent-color">Poblautos</span></h1>
<p class="lead">Nos dedicamos a la compra y venta de <br>vehículos nuevos y usados de <span class="accent-color">Alta Gama</span></p>', content: '<p>Dentro de los productos que ofrecemos se encuentran marcas como Mercedes, BMW, Audi, Toyota, Land Rover, Hummer, Mini Cooper, Porsche, Mazda, Chevrolet, Kia, Yamaha, Bombardier, Suzuki y las diferentes marcas de vehículos y motocicletas de todo el mundo</p>
<p>También contamos con un área de vehículos recreativos y todoterreno especializada en la importación y comercializacion de vehículos anfibios, FourTracks y motocicletas de alto cilindraje.</p>
<p>Estamos ubicados en la ciudad de Medellín sobre la Avenida el Poblado. <br> <span class="accent-color">¡Siempre seremos último modelo!</span></p>', content1: 'OUR CREDO', content2: 'Details matter, its worth<br/>waiting to get it right.<br/><span style="font-size:24px;font-weight:400;">― Steve Jobs</span>', content3: 'JUST A BLUR', content4: 'You only live once, but if<br/>you do it right, once is enough.<br/><span style="font-size:24px;font-weight:400;">―  Mae West</span>', content5: 'SKY HIGH', content6: 'Imperfection is beauty, madness<br/> is genius and its better to be<br/> absolutely ridiculous than<br/> absolutely boring.<br/><span style="font-size:24px;font-weight:400;">―  Marilyn Monroe</span>')

PageContent.create(id: 2, title: 'Nosotros', title1: '<h1 class="uppercase strong">¿Quiénes somos y<br>Qué hacemos?</h1>
              <p class="lead">Somos una empresa  multimarca  <br>especializada en autos de gama<span class="accent-color"> alta y media</span></p>', content: '<p>Poblautos es una compañia dedicada a la intermediación de la compra y venta de vehículos nuevos y usados.
                Dentro de los productos que ofrecemos se encuentran marcas como Mercedes, BMW, Audi, Toyota, Land Rover, Hummer,
                Mini Cooper, Porsche, Mazda, Chevrolet, Kia, Yamaha, Bombardier, Suzuki y las diferentes marcas de vehículos y
                motocicletas de todo el mundo, también contamos con un área de vehículos recreativos y todoterreno especializada
                en la importación y comercializacion de vehículos anfibios, FourTracks y motocicletas de alto cilindraje. Nuestros
                más de veinte años de trayectoria en el mercado, nos da el plus de contar con un área de servicio técnico especializado
                en tecnología de última generación, permitiendo a nuestros clientes una solución rápida y oportuna, ofreciendo garantía
                en todo momento.</p>
                <p> Estamos ubicados en la ciudad de Medellín sobre la Avenida
                  el Poblado. <br><span class="accent-color">¡Siempre seremos último modelo!</span></p>
                </div>', content1: 'Distribuidor Uno', content2: 'Distribuidor Uno', content3: 'Distribuidor Uno')
# PageContent.create(title: "Párrafos Secundarios", html: '<p>Dentro de los productos que ofrecemos se encuentran marcas como Mercedes, BMW, Audi, Toyota, Land Rover, Hummer, Mini Cooper, Porsche, Mazda, Chevrolet, Kia, Yamaha, Bombardier, Suzuki y las diferentes marcas de vehículos y motocicletas de todo el mundo</p>
# <p>También contamos con un área de vehículos recreativos y todoterreno especializada en la importación y comercializacion de vehículos anfibios, FourTracks y motocicletas de alto cilindraje.</p>
# <p>Estamos ubicados en la ciudad de Medellín sobre la Avenida el Poblado. <br> <span class="accent-color">¡Siempre seremos último modelo!</span></p>', page: "Inicio")
# PageContent.create(title: "Quiénes Somos", html: '<h1 class="uppercase strong">¿Quiénes somos y<br>Qué hacemos?</h1>
# <p class="lead">Somos una empresa  multimarca  <br>especializada en autos de gama<span class="accent-color"> alta y media</span></p>', page: "Empresa")
# PageContent.create(title: "Párrafos Secundarios", html: '<p>Poblautos es una compañia dedicada a la intermediación de la compra y venta de vehículos nuevos y usados. Dentro de los productos que ofrecemos se encuentran marcas como Mercedes, BMW, Audi, Toyota, Land Rover, Hummer, Mini Cooper, Porsche, Mazda, Chevrolet, Kia, Yamaha, Bombardier, Suzuki y las diferentes marcas de vehículos y motocicletas de todo el mundo, también contamos con un área de vehículos recreativos y todoterreno especializada en la importación y comercializacion de vehículos anfibios, FourTracks y motocicletas de alto cilindraje. Nuestros más de veinte años de trayectoria en el mercado, nos da el plus de contar con un área de servicio técnico especializado en tecnología de última generación, permitiendo a nuestros clientes una solución rápida y oportuna, ofreciendo garantía en todo momento.</p>
# <p> Estamos ubicados en la ciudad de Medellín sobre la Avenida el Poblado. <br><span class="accent-color">¡Siempre seremos último modelo!</span></p>', page: "Empresa")
# PageContent.create(title: "Servicio Técnico", html: '<h3>SERVICIO TÉCNICO</h3>
# <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus.</p>', page: "Servicio")
# PageContent.create(title: "Seguros de Carro", html: '<h3>SEGUROS DE CARRO</h3>
# <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus.</p>', page: "Servicio")
# PageContent.create(title: "Trámites Poblautos", html: '<h3>TRÁMITES POBLAUTOS</h3>
# <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus.</p>', page: "Servicio")
# PageContent.create(title: "Video 01", html: '<div class="vehicle-block-content">
#     <span class="label label-primary vehicle-age">Video 01</span>
#     <h5 class="vehicle-title"><a href="#">Institucional</a></h5>
#     <span class="vehicle-meta">ref 324 <abbr class="user-type" title="Listed by an dealer">Dealer</abbr></span>
#     <a href="results-list.html" title="View all SUVs" class="vehicle-body-type"></a>
#     <span class="vehicle-cost">Mejor servicio de la ciudad</span>
# </div>', page: "Servicio")
# PageContent.create(title: "Video 02", html: '<div class="vehicle-block-content">
#     <span class="label label-primary vehicle-age">Video 02</span>
#     <h5 class="vehicle-title"><a href="#">Institucional</a></h5>
#     <span class="vehicle-meta">ref 324 <abbr class="user-type" title="Listed by an dealer">Dealer</abbr></span>
#     <a href="results-list.html" title="View all SUVs" class="vehicle-body-type"><img src="images/body-types/suv.png" width="30" alt=""></a>
#     <span class="vehicle-cost">Mejor servicio de la ciudad</span>
# </div>', page: "Servicio")
# PageContent.create(title: "Video 03", html: '<div class="vehicle-block-content">
#     <span class="label label-default vehicle-age">Video 02</span>
#     <h5 class="vehicle-title"><a href="#">Institucional</a></h5>
#     <span class="vehicle-meta">ref 324 <abbr class="user-type" title="Listed by an individual">Individual</abbr></span>
#     <a href="results-list.html" title="View all convertibles" class="vehicle-body-type"></a>
#     <span class="vehicle-cost">Mejor servicio de la ciudad</span>
# </div>', page: "Servicio")

