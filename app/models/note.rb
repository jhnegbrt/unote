class Note < ApplicationRecord

  validates :body, length: {minimum: 1}
  validates :author_id, presence: true
  validates :title, length: {maximum: 30, allow_nil: true}

  def note_associations
    debugger
    NoteAssociations.where("note_1_id = ? OR note_2_id = ?", id, id)
  end
  
end