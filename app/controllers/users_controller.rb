class UsersController < ApplicationController

  def new
    @user = User.new
    render :new
  end

  def create

    params = user_params
    if params[:password] != params[:password_confirmation]
      
    else

    end
    debugger

    @user = User.new(user_params)

    debugger
    
  end

  def show
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end

end