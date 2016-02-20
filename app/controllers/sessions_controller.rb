class SessionsController < ApplicationController
  def new
    
  end
  def create
    user = User.find_by(email:params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
    session[:user_id]=user.id
    flash[:success] = "You have successfuly log in"
    redirect_to user_path(user)
    else  
      flash.now[:danger] = "There was somthing wrong with login information"
    render 'new'
    end
  end
  def destroy
   session[:user_id]=nil
   flash[:danger] = "you have Log out"
   redirect_to root_path 
  end
end