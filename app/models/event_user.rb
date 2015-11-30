class EventUser
  include Mongoid::Document

  field :going_at, type: DateTime
  field :arrived_at, type: DateTime
  field :rate, type: Float
  field :like, type: Boolean

  scope :going, -> { where( :going_at.ne => nil ) }
  scope :arrived, -> { where( :arrived_at.ne => nil ) }
  scope :rated, -> { where( :rate.ne => nil ) }
  scope :liked, -> { where( :like => true ) }


  belongs_to :event
  belongs_to :user
end
