class Group < ActiveRecord::Base
  has_many :relationships
  has_many :members, through: :relationships
  belongs_to :meetup
end
