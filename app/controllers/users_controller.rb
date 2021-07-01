class UsersController < ApplicationController

  def new
    @user = User.new
    render :new
  end

  def create
    debugger
    if password_confirmation[:password_confirmation] == user_params[:password]
      @user = User.new(user_params)
      if @user.save!
        login!(@user)
        render :show
      else
        flash.now[:errors] = @user.errors.full_messages
        render :new
      end
    else
      flash.now[:errors] = ["Passwords must match"]
    end


    
  end

  def show
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

  def password_confirmation
    params.require(:password).permit(:password_confirmation)
  end

end