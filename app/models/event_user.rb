class EventUser
  include Mongoid::Document

  field :told_goind_at, type: DateTime
  field :arrived_at, type: DateTime
  field :rate, type: Float

  belongs_to :event
  belongs_to :user
end
