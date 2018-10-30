class SessionsController < ActionController::Base

  def create
    binding.pry
    session[:username] = params[:username]
    redirect_to '/sessions/new'
  end
end
