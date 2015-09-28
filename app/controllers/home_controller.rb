class HomeController < ApplicationController

  before_action :authenticate_user!

  def dashboard
    @cheets = Cheet.all
     @users = User.where("id != ?", @current_user.id)
  end

end
