class RestaurantesController < ApplicationController

  def index
    @restaurantes = Restaurante.order("name")
  end

  def show
    @restaurante = Restaurante.find( params[:id] )
  end

  def new
    @restaurante = Restaurante.new
  end   # using default: sending to new.html.erb

  def create
    @restaurante = Restaurante.new( params[:restaurante] )

    if @restaurante.save
      redirect_to(:action => "show", :id => @restaurante)
    else
      render :action => "new"
    end
  end   # receives "POST" from new.html.erb

  def edit
    @restaurante = Restaurante.find( params[:id] )
  end   # edit.html.erb

  def update
    @restaurante = Restaurante.find( params[:id] )
    if @restaurante.update_attributes( params[:restaurante] )
      redirect_to(:action => "show", :id => @restaurante)
    else
      render :action => "edit"
    end
  end

  def destroy
    @restaurante = Restaurante.find( params[:id] )
    @restaurante.destroy
    redirect_to :action => "index" # I have no destroy.html.erb, so I redirect
  end


end

