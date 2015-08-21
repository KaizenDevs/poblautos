# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(
  email: 'admin@poblautos.com',
  password: 'poblautos2015'
  )

PageContent.create(id: 1, title: '<h1 class="uppercase strong">Bienvenido a<br><span class="accent-color">Poblautos</span></h1>
<p class="lead">Nos dedicamos a la compra y venta de <br>vehículos nuevos y usados de <span class="accent-color">Alta Gama</span></p>', content: '<p>Dentro de los productos que ofrecemos se encuentran marcas como Mercedes, BMW, Audi, Toyota, Land Rover, Hummer, Mini Cooper, Porsche, Mazda, Chevrolet, Kia, Yamaha, Bombardier, Suzuki y las diferentes marcas de vehículos y motocicletas de todo el mundo</p>
<p>También contamos con un área de vehículos recreativos y todoterreno especializada en la importación y comercializacion de vehículos anfibios, FourTracks y motocicletas de alto cilindraje.</p>
<p>Estamos ubicados en la ciudad de Medellín sobre la Avenida el Poblado. <br> <span class="accent-color">¡Siempre seremos último modelo!</span></p>', content1: 'OUR CREDO', content2: 'Details matter, its worth<br/>waiting to get it right.<br/><span style="font-size:24px;font-weight:400;">― Steve Jobs</span>', content3: 'JUST A BLUR', content4: 'You only live once, but if<br/>you do it right, once is enough.<br/><span style="font-size:24px;font-weight:400;">―  Mae West</span>', content5: 'SKY HIGH', content6: 'Imperfection is beauty, madness<br/> is genius and its better to be<br/> absolutely ridiculous than<br/> absolutely boring.<br/><span style="font-size:24px;font-weight:400;">―  Marilyn Monroe</span>', image: 'http://placehold.it/1400x500&amp;text=IMAGE+PLACEHOLDER', image1: 'http://placehold.it/1400x500&amp;text=IMAGE+PLACEHOLDER', image2: 'http://placehold.it/1400x500&amp;text=IMAGE+PLACEHOLDER')

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
                </div>', content1: 'Distribuidor Uno', content2: 'Distribuidor Uno', content3: 'Distribuidor Uno', image: 'https://placeholdit.imgix.net/~text?txtsize=56&txt=IMAGE+PLACEHOLDER&w=1280&h=300', image1: 'http://placehold.it/600x400&amp;text=IMAGE+PLACEHOLDER', image2: 'http://placehold.it/600x400&amp;text=IMAGE+PLACEHOLDER', image3: 'http://placehold.it/600x400&amp;text=IMAGE+PLACEHOLDER')

PageContent.create(id: 3, content: 'SERVICIO TÉCNICO', content1: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus.', content2: 'SEGUROS DE CARRO', content3: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus.', content4: 'TRÁMITES POBLAUTOS', content5: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus.', content6: 'VIDEO 01', content7: '<a href="#">Institucional</a>', content8: 'ref 324 <abbr class="user-type" title="Listed by an dealer">Dealer</abbr>', content9: 'Mejor servicio de la ciudad', content10: 'Video 02', content11: '<a href="#">Institucional</a>', content12: 'ref 324 <abbr class="user-type" title="Listed by an dealer">Dealer</abbr>', content13: 'Mejor servicio de la ciudad', content14: 'Video 03', content15: '<a href="#">Institucional</a>', content16: 'ref 324 <abbr class="user-type" title="Listed by an individual">Individual</abbr>', content17: 'Mejor servicio de la ciudad', content18: '<h1 class="page-title">Servicios Técnicos</h1> <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus. Donec facilisis fermentum sem, ac viverra ante luctus vel. Donec vel mauris quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus. Donec facilisis fermentum sem, ac viverra ante luctus vel. Donec vel mauris quam.</p> <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus. Donec facilisis fermentum sem, ac viverra ante luctus vel. Donec vel mauris quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus. Donec facilisis fermentum sem, ac viverra ante luctus vel. Donec vel mauris quam.</p>', content19: 'Contáctanos', content20: '<h4><a href="#">Seguros de Carros</a></h4> <p>Lorem ipsum dolor sit amet, falli tollit cetero te eos. Ea ullum liber aperiri mi, impetus ate philosophia ad duo, quem regione ne ius.</p>', content21: '<h4><a href="#">Trámites Poblautos</a></h4> <p>Lorem ipsum dolor sit amet, falli tollit cetero te eos. Ea ullum liber aperiri mi, impetus ate philosophia ad duo, quem regione ne ius.</p>', content22: '<h1 class="page-title">Servicios Técnicos</h1> <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus. Donec facilisis fermentum sem, ac viverra ante luctus vel. Donec vel mauris quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus. Donec facilisis fermentum sem, ac viverra ante luctus vel. Donec vel mauris quam.</p> <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus. Donec facilisis fermentum sem, ac viverra ante luctus vel. Donec vel mauris quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus. Donec facilisis fermentum sem, ac viverra ante luctus vel. Donec vel mauris quam.</p>', content23: 'Contáctanos', content24: '<h4><a href="#">Seguros de Carros</a></h4> <p>Lorem ipsum dolor sit amet, falli tollit cetero te eos. Ea ullum liber aperiri mi, impetus ate philosophia ad duo, quem regione ne ius.</p>', content25: '<h4><a href="#">Trámites Poblautos</a></h4> <p>Lorem ipsum dolor sit amet, falli tollit cetero te eos. Ea ullum liber aperiri mi, impetus ate philosophia ad duo, quem regione ne ius.</p>', content26: '<h1 class="page-title">Servicios Técnicos</h1> <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus. Donec facilisis fermentum sem, ac viverra ante luctus vel. Donec vel mauris quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus. Donec facilisis fermentum sem, ac viverra ante luctus vel. Donec vel mauris quam.</p> <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus. Donec facilisis fermentum sem, ac viverra ante luctus vel. Donec vel mauris quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus. Donec facilisis fermentum sem, ac viverra ante luctus vel. Donec vel mauris quam.</p>', content27: 'Contáctanos', content28: '<h4><a href="about.html">Seguros de Carros</a></h4> <p>Lorem ipsum dolor sit amet, falli tollit cetero te eos. Ea ullum liber aperiri mi, impetus ate philosophia ad duo, quem regione ne ius.</p>', content29: '<h4><a href="about.html">Trámites Poblautos</a></h4> <p>Lorem ipsum dolor sit amet, falli tollit cetero te eos. Ea ullum liber aperiri mi, impetus ate philosophia ad duo, quem regione ne ius.</p>', image: 'http://placehold.it/1400x500&amp;text=IMAGE+PLACEHOLDER', image1: 'http://placehold.it/1400x500&amp;text=IMAGE+PLACEHOLDER', image2: 'http://placehold.it/600x400&amp;text=IMAGE+PLACEHOLDER', image3: 'http://placehold.it/600x400&amp;text=IMAGE+PLACEHOLDER', image4: 'http://placehold.it/600x400&amp;text=IMAGE+PLACEHOLDER', image5: 'http://placehold.it/200x200&amp;text=IMAGE+PLACEHOLDER', image6: 'http://placehold.it/200x200&amp;text=IMAGE+PLACEHOLDER', image7: 'http://placehold.it/200x200&amp;text=IMAGE+PLACEHOLDER', image8: 'http://placehold.it/200x200&amp;text=IMAGE+PLACEHOLDER', image9: 'http://placehold.it/200x200&amp;text=IMAGE+PLACEHOLDER', image10: 'http://placehold.it/200x200&amp;text=IMAGE+PLACEHOLDER')

PageContent.create(id: 4, image: 'http://placehold.it/1200x300&amp;text=IMAGE+PLACEHOLDER')
PageContent.create(id: 5, image: 'http://placehold.it/1200x300&amp;text=IMAGE+PLACEHOLDER')
PageContent.create(id: 6, image: 'http://placehold.it/1200x300&amp;text=IMAGE+PLACEHOLDER')
PageContent.create(id: 7, image: 'http://placehold.it/1200x300&amp;text=IMAGE+PLACEHOLDER')
PageContent.create(id: 8, image: 'http://placehold.it/1200x300&amp;text=IMAGE+PLACEHOLDER')
PageContent.create(id: 9, image: 'http://placehold.it/1200x300&amp;text=IMAGE+PLACEHOLDER')
PageContent.create(id: 10, content: '<i class="fa fa-home"></i></span> <b>Grupo Poblautos</b><br> Carrera 43 A 11 B-115 <br>Poblado, Medellín<br><br><br> <i class="fa fa-phone"></i> <b>+57 (4) 3122222</b><br><i class="fa fa-envelope"></i> <a href="mailto:example@info.com">info@poblautos.com</a><br><br><i class="fa fa-home"></i> <b>Lúnes - Viernes 8.00 am - 6.00pm</b><br><i class="fa fa-home"></i> Sábado 8.00 am -1.00 pm')


Link.create(id:1, url: "https://www.youtube.com/watch?v=qVFOC9_T8Pw")
Link.create(id:2, url: "https://www.youtube.com/watch?v=qVFOC9_T8Pw")
Link.create(id:3, url: "https://www.youtube.com/watch?v=qVFOC9_T8Pw")

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

# Vehicle.create(name: "Toyota", year: 2011, state: "Nuevo", price: 50000, transmission: 0, gas: 0, vehicle_model: "Prado", engine: "1600", mileage: 45000, upholstery: "Cuero", vehicle_type: 0, used: false, video: "", color: "Verde", license_plate: 3, comments: "añkldjfñladjf", created_at: "2015-08-07 16:36:54", updated_at: "2015-08-07 17:04:22", image_file_name: "l.jpg", image_content_type: "image/jpeg", image_file_size: 21679, image_updated_at: "2015-08-07 16:36:53", air_conditioning: true, shield: false, license_plate_city: "Medellin")





