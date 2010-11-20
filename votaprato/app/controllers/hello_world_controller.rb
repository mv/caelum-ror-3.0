class HelloWorldController < ApplicationController

  def hello
    render :text => "HelloWorldController: hello: Olá mundo!!!"
  end

  def index
    # redirect_to :action => 'hello'
    render :text => "HelloWorldController: index: Olá mundo!!!"
  end

end

