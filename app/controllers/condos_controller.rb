class CondosController < ApplicationController

  def index
    @condos = Condo.all
  end

  def new
    @condo = Condo.new
  end

end
