class Api::V1::EventsController < Api::V1::BaseController
  before_filter :set_user
  before_filter :set_event, except: :index

  def index
    date = params[:last_updated]
    @events = Event.accepted.upcoming.where(:updated_at.gte => date ).order_by("start_time ASC") if date
    @events = Event.accepted.upcoming.order_by("start_time ASC") unless date
  end

  def tell_i_am_going
    @e = @event.event_users.where(user: @user).first_or_create!
    @e.told_goind_at = DateTime.now
    @e.save
  end

  def join
    @e = @event.event_users.where(user: @user).first_or_create!
    @e.arrived_at = DateTime.now
    @e.save
  end

  def rate
    @e = @event.event_users.where(user: @user).first_or_create!
    @e.rate = params[:rate]
    @e.save
  end

  private 
    def set_user
      if session.has_key?(:user_id)
        @user = User.find session[:user_id]
      else
        render json: "unable to find user session", status: :unauthorized
      end
    end
    def set_event
      @event = Event.find params[:id]
    end
end
