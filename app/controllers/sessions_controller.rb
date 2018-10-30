class SessionsController < ApplicationController

  def create
    # binding.pry
    if params[:name] == nil
      redirect_to '/login'
    elsif params[:name].strip == ""
      redirect_to '/login'
    elsif params[:name]
      session[:name] = params[:name]
    end
    if session[:name] = params[:name]
      redirect_to '/'
    end
    # redirect_to '/sessions/new'
  end

  def new
  end

  def destroy
    session.delete :name
  end
end
