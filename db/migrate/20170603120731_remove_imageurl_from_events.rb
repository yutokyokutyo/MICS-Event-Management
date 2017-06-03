class RemoveImageurlFromEvents < ActiveRecord::Migration[5.0]
  def change
    remove_column :events, :image_url, :string
  end
end
