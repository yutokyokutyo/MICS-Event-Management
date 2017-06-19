class Event < ApplicationRecord
  belongs_to :user
  has_many :passive_relationships, class_name:  "Relationship",
                                   foreign_key: "joined_id",
                                   dependent:   :destroy
  has_many :joiners, through: :passive_relationships, source: :join
  validates :user_id, presence: true
  geocoded_by :location
  after_validation :geocode
  default_scope -> { order(created_at: :desc) }
  mount_uploader :picture, PictureUploader
  validate  :picture_size
  private

    # アップロードされた画像のサイズをバリデーションする
    def picture_size
      if picture.size > 5.megabytes
        errors.add(:picture, "should be less than 5MB")
      end
    end
end
