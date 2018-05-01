class Event < ApplicationRecord
  has_one :venue
  has_many :meetups
  has_and_belongs_to_many :users
end
