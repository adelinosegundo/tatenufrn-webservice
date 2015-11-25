json.id       @e.id.to_s
json.eventId  @e.event.id.to_s
json.userId   @e.user.id.to_s
json.joined   @e.arrived_at != nil
json.liked    @e.like if @e.like
json.liked    false unless @e.like
json.rate     @e.rate rescue ""