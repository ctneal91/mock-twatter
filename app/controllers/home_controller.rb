class HomeController < ApplicationController

  before_action :authenticate_user!

  def dashboard
    @cheets = Cheet.all #change to Cheet.where (see sample code)
    @users = User.where("id != ?", @current_user.id)
    @people = @current_user.following_users
  end

end
