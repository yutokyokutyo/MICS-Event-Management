class Relationship < ApplicationRecord
  belongs_to :join, class_name: "User"
  belongs_to :joined, class_name: "Event"
  validates :join_id, presence: true
  validates :joined_id, presence: true
end
