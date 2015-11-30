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
    start_time: DateTime.new(2015, 12, 2, 0, 0, 0),
    end_time: DateTime.new(2015, 12, 4, 23, 59, 0),
    address: "Anfiteatro das Aves, Centro de Biociências - UFRN.",
    radius_trigger: "10",
    fb_event_id: nil,
    html_info: "Some crawled html",
    location_x: "-5.841876",
    location_y: "-35.2018364",
    accepted: false
)

event2 = Event.create(
    title: "TATENUFRN, EVERYONE!",
    description: "This event will show you why tatenufrn is the app of 2016!",
    original_image: "https://lvs.luxury/wp-content/uploads/2015/05/IMG_1266Porche-event.jpg",
    start_time: DateTime.new(2015, 11, 23, 0, 0, 0),
    end_time: DateTime.new(2015, 11, 23, 23, 59, 0),
    address: "Some Address",
    radius_trigger: "5",
    fb_event_id: nil,
    html_info: "Some crawled html",
    location_x: "-5.8321995",
    location_y: "-35.2050854",
    accepted: false
)

event3 = Event.create(
    title: "STUNNING EVENT WITH NO MAX TWO ROWS",
    description: "This is the event!",
    original_image: "http://www.eventlebanon.com/wp-content/uploads/2014/07/Lesley-and-Andrew-2-5.jpg",
    start_time: DateTime.new(2015, 11, 25, 19, 0, 0),
    end_time: DateTime.new(2015, 11, 25, 23, 59, 0),
    address: "Some Address",
    radius_trigger: "5",
    fb_event_id: nil,
    html_info: "Some crawled html",
    location_x: "-5.8496945",
    location_y: "-35.200445",
    accepted: false
)

event4 = Event.create(
    title: "THE EVENT",
    description: "This is the event!",
    original_image: "http://static1.squarespace.com/static/5499ae37e4b044170dcd2f82/55dcc557e4b0525a5670588a/55dcc557e4b0525a5670588b/1440531802033/NOW+LIVE.jpg?format=2500w",
    start_time: DateTime.new(2015, 11, 26, 19, 0, 0),
    end_time: DateTime.new(2015, 11, 26, 23, 59, 0),
    address: "Some Address",
    radius_trigger: "5",
    fb_event_id: nil,
    html_info: "Some crawled html",
    location_x: "-5.8496945",
    location_y: "-35.200445",
    accepted: false
)

event1.accept
event2.accept
event3.accept
event4.accept

User.destroy_all

5.times do |n|
    user = User.create(
        name: "User #{n}",
        login: "login#{n}"
    )
end
