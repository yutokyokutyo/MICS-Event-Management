class CreateRelationships < ActiveRecord::Migration[5.0]
  def change
    create_table :relationships do |t|
      t.integer :join_id
      t.integer :joined_id

      t.timestamps
    end
    add_index :relationships, :join_id
    add_index :relationships, :joined_id
    add_index :relationships, [:join_id, :joined_id], unique: true
  end
end
