class User < ApplicationRecord
  has_secure_password
  has_and_belongs_to_many :meetups
  has_and_belongs_to_many :events
  has_many :comments

  validates :email, presence: { message: "must be provided" }, uniqueness: { message: "The email you prvided is already in use" }
  validates :username, presence: { message: "must be provided" }, uniqueness: { message: "This username is already in use" }
  validates :password, presence: { message: "must be provided" }, confirmation: { message: "Password must match" }
  validates :birthday, presence: true, on: :create
  validates :first_name, presence: { message: "must be provided" }, on: :create
  validates :last_name, presence: { message: "must be provided" }, on: :create

end
