class HomeController < ApplicationController

  before_action :authenticate_user!

  def dashboard
    @cheets = Cheet.all
  end

end
