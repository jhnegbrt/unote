class UsersController < ApplicationController

  def new
    @user = User.new
    render :new
  end

  def create
    params = user_params.select {|k, v| v != ""}
    debugger
    @user = User.new(params)
    if password_confirmation[:password_confirmation] == user_params[:password]
      if @user.save
        login!(@user)
        render :show
      else
        flash.now[:errors] = @user.errors.full_messages
        render :new
      end
    else
      flash.now[:errors] = ["Passwords must match"]
      render :new
    end
  end

  def show
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :email)
  end

  def password_confirmation
    params.require(:password).permit(:password_confirmation)
  end

end