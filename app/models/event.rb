class Event
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :title, type: String
  field :description, type: String
  field :original_image, type: String
  field :start_time, type: DateTime
  field :end_time, type: DateTime
  field :address, type: String
  field :radius_trigger, type: Float
  field :fb_event_id, type: String
  field :html_info, type: String
  field :location_x, type: Float
  field :location_y, type: Float
  field :accepted, type: Boolean

  mount_uploader :image, ImageUploader

  has_many :event_users

  scope :accepted, -> { where( accepted: true ) }
  scope :upcoming, -> { where( :end_time.gte => DateTime.now ) }

  def rating
    rated_users = event_users.where(:rate.ne => nil).size
    if rated_users >= 1
      event_users.where(:rate.ne => nil).map(&:rate).inject{|sum,x| sum + x } / event_users.where(:rate.ne => nil).size
    else
      0.0
    end
  end

  def self.craw
    crawler_script = Rails.root.join('crawler', 'tatenufrn.py')
    %x(scrapy runspider "#{crawler_script}")
  end

  def thumb_url
    "http://192.168.25.2:3000" + self.image.thumb.url
  end

  def accept
    self.download_and_resize_image
    self.accepted = true
    self.save
  end

  def download_and_resize_image
    require 'open-uri'
    file = open(self.original_image)
    puts file
    self.image = file
    self.save
  end

end
