class CreateSiblings < ActiveRecord::Migration[5.2]
  def change
    create_table :siblings do |t|
      t.integer :sibling_1_id, null false
      t.integer :sibling_1_id, null false
    end
  end
end
