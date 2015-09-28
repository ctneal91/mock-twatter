class CheetsController < ApplicationController

  before_action :authenticate_user!
  
  def detail
    @cheet = Cheet.find params[:id]
  end

  def new
    @cheet = Cheet.new
  end

  def create
    @cheet = Cheet.new params.require(:cheet).permit(:entry)
    if @cheet.save
      redirect_to root_path
    else
      render :new
    end
  end
end
