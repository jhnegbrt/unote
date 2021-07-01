class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by_credentials(
      params[:user][:username],
      params[:user][:password]
    )
    if @user.nil?
      flash.now[:errors] = ["Incorrect username and/or password"]
      render :new
    else
      login!(@user)
      redirect_to user_url(@user.id)
    end
  end

  def destroy
    logout!
    render :new
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

end