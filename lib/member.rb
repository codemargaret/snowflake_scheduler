class Member <ActiveRecord::Base
  has_many :member_avails
  has_many :relationships
  belongs_to :role
  has_many :groups, through: :relationships

end
