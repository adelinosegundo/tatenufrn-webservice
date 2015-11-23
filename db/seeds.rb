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
    title: "STUNNING EVENT WITH NO MAX TWO ROWS",
    description: "This is the event!",
    original_image: "http://bloggingtips.moneyreigninc.netdna-cdn.com/wp-content/uploads/2014/12/Event-Blogging-Strategies.jpg",
    start_time: DateTime.new(2015, 11, 22, 19, 0, 0),
    end_time: DateTime.new(2015, 11, 22, 23, 59, 0),
    address: "Some Address",
    radius_trigger: "5",
    fb_event_id: nil,
    html_info: "Some crawled html",
    location_x: "-23.5477",
    location_y: "-46.6358",
    accepted: false
)

event2 = Event.create(
    title: "EVENT",
    description: "This is the event!",
    original_image: "http://www.eventlebanon.com/wp-content/uploads/2014/07/Lesley-and-Andrew-2-5.jpg",
    start_time: DateTime.new(2015, 11, 22, 22, 30, 0),
    end_time: DateTime.new(2015, 11, 22, 23, 59, 0),
    address: "Some Address",
    radius_trigger: "5",
    fb_event_id: nil,
    html_info: "Some crawled html",
    location_x: "-23.5477",
    location_y: "-46.6358",
    accepted: false
)

event3 = Event.create(
    title: "STUNNING EVENT WITH NO MAX TWO ROWS",
    description: "This is the event!",
    original_image: "http://www.eventlebanon.com/wp-content/uploads/2014/07/Lesley-and-Andrew-2-5.jpg",
    start_time: DateTime.new(2015, 11, 23, 19, 0, 0),
    end_time: DateTime.new(2015, 11, 23, 23, 59, 0),
    address: "Some Address",
    radius_trigger: "5",
    fb_event_id: nil,
    html_info: "Some crawled html",
    location_x: "-23.5477",
    location_y: "-46.6358",
    accepted: false
)

event4 = Event.create(
    title: "THE EVENT",
    description: "This is the event!",
    original_image: "http://static1.squarespace.com/static/5499ae37e4b044170dcd2f82/55dcc557e4b0525a5670588a/55dcc557e4b0525a5670588b/1440531802033/NOW+LIVE.jpg?format=2500w",
    start_time: DateTime.new(2015, 11, 24, 19, 0, 0),
    end_time: DateTime.new(2015, 11, 24, 23, 59, 0),
    address: "Some Address",
    radius_trigger: "5",
    fb_event_id: nil,
    html_info: "Some crawled html",
    location_x: "-23.5477",
    location_y: "-46.6358",
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
