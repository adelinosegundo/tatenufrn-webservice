class User
  include Mongoid::Document
  field :name, type: String
  field :login, type: String

  has_many :event_users
end
