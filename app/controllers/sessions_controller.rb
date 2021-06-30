class SessionsController < ApplicationController

  def new
  end

  def create
  end

  def destroy
    logout!
    render :new
  end
end