class Event
  include Mongoid::Document
  field :title, type: String
  field :description, type: String
  field :image, type: String
  field :start_time, type: Date
  field :end_time, type: Date
  field :address, type: String
  field :radius_trigger, type: Float
  field :fb_event_id, type: String
  field :html_info, type: String


  embeds_many :event_rates

  accepts_nested_attributes_for :event_rates

  def self.craw
    crawler_script = Rails.root.join('crawler', 'tatenufrn.py')
    %x(scrapy runspider #{crawler_script} 2>&1)
  end

end
