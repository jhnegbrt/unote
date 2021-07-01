class NotesController < ApplicationController

  def index
    @notes = Note.all
  end

  def new
    @note = Note.new
    render :new
  end

  def show
  end
end