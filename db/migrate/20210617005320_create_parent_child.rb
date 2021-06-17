class CreateParentChild < ActiveRecord::Migration[5.2]
  def change
    create_table :parent_children do |t|
      t.integer :parent_note_id, null: false
      t.integer :child_note_id, null: false
    end
  end
end
