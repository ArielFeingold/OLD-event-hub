class User < ApplicationRecord
  has_secure_password
  has_and_belongs_to_many :meetups
  has_and_belongs_to_many :events
  has_many :comments

  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true, confirmation: true
  validates :birthday, presence: true, on: :create
  validates :first_name, presence: true, on: :create
  validates :last_name, presence: true, on: :create

end
