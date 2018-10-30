class SessionsController < ApplicationController

  def create
    # binding.pry
    if params[:name] == nil
      redirect to '/'
    if params[:name]
      session[:name] = params[:name]
    if session[:name] = params[:name]
      redirect_to '/'
    else
    # redirect_to '/sessions/new'
  end

  def new
  end

  def destroy
    session.delete :name
  end
end
