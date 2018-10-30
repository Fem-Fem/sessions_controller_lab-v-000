class SessionsController < ApplicationController

  def create
    binding.pry
    session[:username] = params[:username]
    redirect_to '/sessions/new'
  end

  def new
  end

  def destroy
  end
end
