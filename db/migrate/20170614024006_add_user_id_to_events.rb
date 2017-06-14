class AddUserIdToEvents < ActiveRecord::Migration[5.0]
  def change
    add_reference :events, :user, foreign_key: true
  end
end
