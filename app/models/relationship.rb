class Relationship < ApplicationRecord
  belongs_to :join, class_name: "User"
  validates :join_id, presence: true
  validates :joined_id, presence: true
end
