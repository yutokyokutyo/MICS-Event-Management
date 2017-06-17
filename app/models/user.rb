class User < ApplicationRecord
  has_many :events
  has_many :active_relationships, class_name:  "Relationship",
                                  foreign_key: "join_id",
                                  dependent:   :destroy
  has_many :joining, through: :active_relationships, source: :joined

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # イベントに参加する
  def join(user)
    active_relationships.create(joined_id: user.id)
  end

  # イベント参加キャンセルする
  def unjoin(user)
    active_relationships.find_by(joined_id: user.id).destroy
  end

  # 現在のユーザーがイベント参加していたらtrueを返す
  def joining?(user)
    join.include?(user)
  end
end
