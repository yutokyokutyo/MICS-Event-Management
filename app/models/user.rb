class User < ApplicationRecord
  has_many :events
  has_many :active_relationships, class_name:  "Relationship",
                                  foreign_key: "join_id",
                                  dependent:   :destroy
  has_many :joining, through: :active_relationships, source: :joined

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  # TODO: ユーザー詳細ページで画像を追加するときだけ呼ばれる条件分岐を追加する
  # mount_uploader :image, PictureUploader

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name   # assuming the user model has a name
      user.image = auth.info.image # assuming the user model has an image
      # If you are using confirmable and the provider(s) you use validate emails, 
      # uncomment the line below to skip the confirmation emails.
      # user.skip_confirmation!
    end
  end

  # イベントに参加する
  def join(event)
    active_relationships.create(joined_id: event.id)
  end

  # イベント参加キャンセルする
  def unjoin(event)
    active_relationships.find_by(joined_id: event.id).destroy
  end

  # 現在のユーザーがイベント参加していたらtrueを返す
  def joining?(event)
    joining.include?(event)
  end
end
