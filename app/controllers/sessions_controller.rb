class SessionsController < ApplicationController

  # def create
  #   if params[:name] == nil || params[:name].strip == ""
  #     redirect_to '/login'
  #   elsif params[:name]
  #     session[:name] = params[:name]
  #   end
  #   if session[:name] = params[:name]
  #     redirect_to '/'
  #   end
  # end

  def create
  return redirect_to(controller: 'sessions',
                     action: 'new') if !params[:name] || params[:name].empty?
  session[:name] = params[:name]
  redirect_to controller: 'application', action: 'hello'
  end


  def new
  end

  def destroy
    session.delete :name
  end
end
