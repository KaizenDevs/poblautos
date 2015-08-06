# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

    PageContent.create(title: "Título Bienvenida", html: '<h1 class="uppercase strong">Bienvenido a<br><span class="accent-color">Poblautos</span></h1><p class="lead">Nos dedicamos a la compra y venta de <br>vehículos nuevos y usados de <span class="accent-color">Alta Gama</span></p>', page: "Inicio")
    PageContent.create(title: "Párrafos Secundarios", html: '<p>Dentro de los productos que ofrecemos se encuentran marcas como Mercedes, BMW, Audi, Toyota, Land Rover, Hummer, Mini Cooper, Porsche, Mazda, Chevrolet, Kia, Yamaha, Bombardier, Suzuki y las diferentes marcas de vehículos y motocicletas de todo el mundo</p> <p>También contamos con un área de vehículos recreativos y todoterreno especializada en la importación y comercializacion de vehículos anfibios, FourTracks y motocicletas de alto cilindraje.</p> <p>Estamos ubicados en la ciudad de Medellín sobre la Avenida el Poblado. <br> <span class="accent-color">¡Siempre seremos último modelo!</span></p>', page: "Inicio")
