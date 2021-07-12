class AddIndexToNoteAssociations < ActiveRecord::Migration[5.2]
  def change
    add_index :note_associations, [:note_1_id, :note_2_id], unique: true
    add_index :note_associations, [:note_2_id, :note_1_id], unique: true
  end
end
