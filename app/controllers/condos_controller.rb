class CondosController < ApplicationController

  def index
    @condo = Condo.all
  end

end
