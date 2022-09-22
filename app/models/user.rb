class User < ApplicationRecord
  has_many :travels
  validates :name, presence: true
  validates :email, presence:true
  validates :password, presence: true
end
