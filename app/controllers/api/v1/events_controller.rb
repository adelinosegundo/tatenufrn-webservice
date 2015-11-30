class Api::V1::EventsController < Api::V1::BaseController
  before_filter :set_user
  before_filter :set_event, except: [:index, :event_users]

  def index
    date = params[:last_updated]
    @events = Event.accepted.upcoming.where(:updated_at.gte => date ).order_by("start_time ASC") if date
    @events = Event.accepted.upcoming.order_by("start_time ASC") unless date
  end

  def event_users
    @event_users = @user.event_users.where(:event.in => Event.accepted.upcoming.map{|e| e.id.to_s })
  end

  def going
    @e = @event.event_users.where(user: @user).first_or_create!
    @e.going_at = DateTime.now
    @e.save
    render 'api/v1/events/event_user'
  end

  def arrive
    @e = @event.event_users.where(user: @user).first_or_create!
    @e.arrived_at = DateTime.now
    @e.save
    render 'api/v1/events/event_user'
  end

  def rate
    @e = @event.event_users.where(user: @user).first_or_create!
    @e.rate = params[:rate]
    @e.save
    render 'api/v1/events/event_user'
  end

  def like
    @e = @event.event_users.where(user: @user).first_or_create!
    @e.like = true
    @e.save
    render 'api/v1/events/event_user'
  end

  def dislike
    @e = @event.event_users.where(user: @user).first_or_create!
    @e.like = false
    @e.save
    render 'api/v1/events/event_user'
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
