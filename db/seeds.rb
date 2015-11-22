# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

##Events

Event.destroy_all
5.times do |n|
  event = Event.create(
    title: "Event #{n}",
    description: "This is the event #{n}",
    original_image: "http://bloggingtips.moneyreigninc.netdna-cdn.com/wp-content/uploads/2014/12/Event-Blogging-Strategies.jpg",
    start_time: Date.tomorrow,
    end_time: Date.tomorrow.tomorrow,
    address: "Some Address",
    radius_trigger: "5",
    fb_event_id: nil,
    html_info: "Some crawled html",
    location_x: "-23.5477",
    location_y: "-46.6358",
    accepted: false
  )
  event.accept
end

User.destroy_all
5.times do |n|
    user = User.create(
        name: "User #{n}",
        login: "login#{n}"
    )
end