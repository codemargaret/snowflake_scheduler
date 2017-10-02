class Group < ActiveRecord::Base
  has_many :relationships
  belongs_to :meetups
end
