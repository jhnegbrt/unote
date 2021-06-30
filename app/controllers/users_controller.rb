class UsersController < ApplicationController

  def new
    @user = User.new
    render :new
  end

  def create
    if password_confirmation == user_params[:password]
      @user = User.new(user_params)
      if @user.save!
        login!(@user)
        render :show
      else

      end
    else

    end


    
  end

  def show
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end

  def password_confirmation
    params.require(:password_confirmation)
  end

end