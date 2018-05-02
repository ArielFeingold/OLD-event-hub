class User < ApplicationRecord
  has_secure_password
  has_and_belongs_to_many :meetups
  has_and_belongs_to_many :events
  has_many :comments

  validates :first_name, :last_name, :birthday, :password, :email, presence: { message: "must be given" }
  validates :email, uniqueness: { message: "The email you provided is already used" }
  validates :username, uniqueness: { message: "The username you provided is already taken" }
  validates :password, confirmation: { message: "Passwords don't match" }


end
