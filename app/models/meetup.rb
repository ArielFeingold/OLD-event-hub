class Meetup < ApplicationRecord
  has_and_belongs_to_many :users
  belongs_to :event
end
