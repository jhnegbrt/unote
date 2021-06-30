class UsersController < ApplicationController

  def new
    @user = User.new
    render :new
  end

  def create

    @user = User.create(user_params)
    debugger
    
  end

  def show
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end

end