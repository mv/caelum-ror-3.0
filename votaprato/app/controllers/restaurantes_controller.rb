class RestaurantesController < ApplicationController

  def index
    # @restaurantes = Restaurante.find(:all) 
    @restaurantes = Restaurante.all
  end

  def show
    @restaurante = Restaurante.find( params[:id] )
  end

  def destroy
    @restaurante = Restaurante.find( params[:id] )
    @restaurante.destroy
    redirect_to :action => "index" # I have no destroy.html.erb, so I redirect
  end

  def new
  end   # using default: sending to new.html.erb

  def create
    @restaurante = Restaurante.new( params[:restaurante] )
    @restaurante.save
    redirect_to :action => "show", :id => @restaurante.id
  end

end

