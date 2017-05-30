class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.text :title,  null: false
      t.text :sub_title,  null: false
      t.text :description,  null: false
      t.string :location,  null: false
      t.string :image_url,  null: false
      t.datetime :start_time,  null: false
      t.datetime :end_time,  null: false
      t.integer :capacity,  null: false

      t.timestamps
    end
  end
end
