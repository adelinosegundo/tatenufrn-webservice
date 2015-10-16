json.array!(@events) do |event|
  json.id                 event.id.to_s
  json.title              event.title.to_s
  json.description        event.description.to_s
  json.imageUrl           event.thumb_url
  json.startTime          event.start_time.strftime('%s').to_i if event.start_time
  json.startTime          0 unless event.start_time
  json.endTime            event.end_time.strftime('%s').to_i if event.end_time
  json.endTime            0 unless event.end_time
  json.address            event.address.to_s
  json.radiusTrigger      event.radius_trigger.to_f
  json.fbEventId          event.fb_event_id.to_i
  json.locX               event.location_x.to_f
  json.locY               event.location_y.to_f
  json.updatedAt          event.updated_at.in_time_zone("Brasilia").strftime('%s').to_i
end
