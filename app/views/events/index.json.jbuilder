json.array!(@events) do |event|
  json.id                 event.id.to_s
  json.title              event.title.to_s
  json.description        event.description.to_s
  json.imageUrl           event.image.to_s
  json.startTime          event.start_time.to_s
  json.endTime            event.end_time.to_s
  json.address            event.address.to_s
  json.radiusTrigger      event.radius_trigger.to_f
  json.fbEventId          event.fb_event_id.to_i
  json.locX               event.location_x.to_f
  json.locY               event.location_y.to_f
end
