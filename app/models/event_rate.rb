class EventRate
  include Mongoid::Document
  embedded_in :user
  embedded_in :event
end
