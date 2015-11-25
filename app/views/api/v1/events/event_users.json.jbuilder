json.array!(@event_users) do |event_user|
  json.id       event_user.id.to_s
  json.eventId  event_user.event.id.to_s
  json.userId   event_user.user.id.to_s
  json.joined   event_user.arrived_at != nil
  json.liked    event_user.like if event_user.like
  json.liked    false unless event_user.like
  json.rate     event_user.rate rescue ""
end
