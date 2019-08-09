class CondosController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create]

  def index
    @condos = Condo.all
  end

  def new
    @condo = Condo.new
  end

  def create
    current_user.condos.create(condo_params)
    
    redirect_to root_path
  end


  private

  def condo_params
    params.require(:condo).permit(:name, :description, :intersection, :builder, :city, :cost1bed, :cost1bedden, :cost2bed, :cost2bedden, :cost3bed, :cost3bedden, :occupancy)
  end


end


      
