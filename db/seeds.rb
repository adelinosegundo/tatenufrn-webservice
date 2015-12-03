# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

##Events

Event.destroy_all

event1 = Event.create(
    title: "II JORNADA DE BIOLOGIA PARASITÁRIA",
    description: "O evento é realizado pelo Programa de Pós-graduação em Biologia Parasitária da UFRN e tem o objetivo de promover o debate sobre o futuro da pesquisa em doenças emergentes, reemergentes e negligenciadas do Rio Grande do Norte, envolvendo a participação de discentes e docentes da UFRN e pesquisadores de renome internacional.",
    original_image: "http://conteudo.info.ufrn.br/22716792462874723a643483195ff.jpeg",
    start_time: DateTime.new(2015, 12, 4, 0, 0, 0),
    end_time: DateTime.new(2015, 12, 5, 23, 59, 0),
    address: "Anfiteatro das Aves, Centro de Biociências - UFRN.",
    radius_trigger: "10",
    fb_event_id: nil,
    html_info: "Some crawled html",
    location_x: "-5.8403551",
    location_y: "-35.2020027",
    accepted: false
)

event2 = Event.create(
    title: "TATENUFRN, EVERYONE!",
    description: "This event will show you why tatenufrn is the app of 2016!",
    original_image: "https://lvs.luxury/wp-content/uploads/2015/05/IMG_1266Porche-event.jpg",
    start_time: DateTime.new(2015, 12, 3, 17, 00, 0),
    end_time: DateTime.new(2015, 12, 3, 17, 30, 0),
    address: "Av.Capitão Mor Gouveia, Lagoa Nova, Natal - RN",
    radius_trigger: "50",
    fb_event_id: nil,
    html_info: "Some crawled html",
    location_x: "-5.832135",
    location_y: "-35.205251",
    accepted: false
)

event3 = Event.create(
    title: "NOSQL CLASS",
    description: "NoSql class at UFRN",
    original_image: "http://www.dailyherald.com/storyimage/DA/20150503/news/150509662/EP/1/1/EP-150509662.jpg&updated=201505030959&MaxW=800&maxH=800&updated=201505030959&noborder",
    start_time: DateTime.new(2015, 12, 3, 17, 00, 0),
    end_time: DateTime.new(2015, 12, 3, 18, 30, 0),
    address: "Av.Capitão Mor Gouveia, Lagoa Nova, Natal - RN",
    radius_trigger: "50",
    fb_event_id: nil,
    html_info: "Some crawled html",
    location_x: "-5.832135",
    location_y: "-35.205251",
    accepted: false
)

event1.accept
event2.accept
event3.accept

User.destroy_all

5.times do |n|
    user = User.create(
        name: "User #{n}",
        login: "login#{n}"
    )
end
