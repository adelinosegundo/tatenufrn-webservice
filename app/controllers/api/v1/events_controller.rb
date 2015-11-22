class Api::V1::EventsController < Api::V1::BaseController
  def index
    date = params[:last_updated]
    @events = Event.accepted.where(:updated_at.gte => date ) if date
    @events = Event.accepted unless date
  end
  def tell_i_am_going
  end
  def join
  end
  def rate
  end
end
