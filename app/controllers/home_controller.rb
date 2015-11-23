class HomeController < ApplicationController

  before_action :authenticate_user!

  def dashboard
    @users = User.where.not(id: @current_user.id)

    @following_users = @current_user.following_users

    @following_users_ids = @following_users.pluck(:id)

    @cheet_ids = @following_users_ids << @current_user.id

    @cheets = Cheet.where(id: @cheet_ids)
  end

end
