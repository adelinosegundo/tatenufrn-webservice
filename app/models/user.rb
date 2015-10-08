class User
  include Mongoid::Document
  field :name, type: String

  embeds_one :event_rate

  accepts_nested_attributes_for :event_rate
end
