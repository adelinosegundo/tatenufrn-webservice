json.array!(@events) do |event|
  json.id                 event.id.to_s
  json.title              event.title.to_s
  json.description        event.description.to_s
  json.image              event.image.to_s
  json.startTime          event.start_time.to_s
  json.endTime            event.end_time.to_s
  json.address            event.address.to_s
  json.radiusTrigger      event.radius_trigger.to_f
  json.fbEventId          event.fb_event_id.to_i
end
