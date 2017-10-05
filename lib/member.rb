class Member <ActiveRecord::Base
  has_many :member_avails, dependent: :destroy
  has_many :relationships
  belongs_to :role
  has_many :groups, through: :relationships
  has_many :days, through: :member_avails
end
