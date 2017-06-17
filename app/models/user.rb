class User < ApplicationRecord
  has_many :events
  has_many :active_relationships, class_name:  "Relationship",
                                  foreign_key: "join_id",
                                  dependent:   :destroy
  has_many :join, through: :active_relationships

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
