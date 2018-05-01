class Event < ApplicationRecord
  has_many :meetups
  has_and_belongs_to_many :users
end
