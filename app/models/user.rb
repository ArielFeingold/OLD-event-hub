class User < ApplicationRecord
  has_secure_password
  has_and_belongs_to_many :meetups
  has_and_belongs_to_many :events
  has_many :comments

  validates :first_name, :last_name, :birthday, :password, :email, presence: true { message: "must be given" }
  validates :email, uniqueness: true { message: "The email you provided is already used" }
  validates :username, uniqueness: true { message: "The username you provided is already taken" }
  validates :password, confirmation: true { message: "Passwords don't match" }


end
