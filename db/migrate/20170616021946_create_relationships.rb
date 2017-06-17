class CreateRelationships < ActiveRecord::Migration[5.0]
  def change
    create_table :relationships do |t|
      t.integer :join_id
      t.timestamps
    end
    add_index :relationships, :join_id
  end
end
