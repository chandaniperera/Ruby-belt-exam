class SessionsController < ApplicationController
  def new
  end


  def create
      user = User.find_by_email(params[:email])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to "/groups"
      else
        flash[:errors] = ['Invalid Combiantion']
        redirect_to '/main'
      end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/main'
  end

end
