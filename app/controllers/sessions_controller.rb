class SessionsController < ApplicationController

  def create
    # binding.pry
    session[:username] = params[:name]
    redirect_to '/'
    # redirect_to '/sessions/new'
  end

  def new
  end

  def destroy
    session.delete :name
  end
end
