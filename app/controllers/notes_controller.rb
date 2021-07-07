class NotesController < ApplicationController

  def index
    @notes = Note.where(author_id: params[:user_id])
  end

  def new
    @note = Note.new
    render :new
  end

  def create
    @note = Note.new(note_params)
    @note.author_id = current_user.id
    if @note.save
      redirect_to user_notes_url(current_user)
    else
      flash.now[:errors] = "Note could not be saved!"
      render :new
    end
  end

  def show
  end

  private

  def note_params
    params.require(:note).permit(:body, :title)
  end
end