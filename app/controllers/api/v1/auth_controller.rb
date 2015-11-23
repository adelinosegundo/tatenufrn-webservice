class Api::V1::AuthController < Api::V1::BaseController
  def login
    @user = User.where(login: params[:login]).first_or_create!
    session[:user_id] = @user.id
  end
  def logout
    session.delete(:user_id)
  end
end
