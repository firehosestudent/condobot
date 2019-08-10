class CondosController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

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

  def show
    @condo = Condo.find(params[:id])
  end

  def edit
    @condo = Condo.find(params[:id])

    if @condo.user != current_user
      return render plain: 'Not Allowed', status: :forbidden
    end

  end

  def update
    @condo = Condo.find(params[:id])

    if @condo.user != current_user
      return render plain: 'Not Allowed', status: :forbidden
    end

    @condo.update_attributes(condo_params)
    redirect_to root_path
  end

  def destroy
    @condo = Condo.find(params[:id])

    if @condo.user != current_user
      return render plain: 'Not Allowed', status: :forbidden
    end

    @condo.destroy
    redirect_to root_path
  end

  private

  def condo_params
    params.require(:condo).permit(:name, :description, :intersection, :builder, :city, :cost1bed, :cost1bedden, :cost2bed, :cost2bedden, :cost3bed, :cost3bedden, :occupancy)
  end


end


      
