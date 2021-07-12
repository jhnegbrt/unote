class NoteAssociation < ApplicationRecord
  validates :note_1_id, presence: true, uniqueness: {scope: :note_2_id}
  validates :note_2_id, presence: true, uniqueness: {scope: :note_1_id}
end