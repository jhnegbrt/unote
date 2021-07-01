class CreateNoteAssociations < ActiveRecord::Migration[5.2]
  def change
    create_table :note_associations do |t|
      t.integer :note_1_id, null: false
      t.integer :note_2_id, null: false

      t.timestamps
    end
  end
end
