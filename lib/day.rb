class Day <ActiveRecord::Base
  has_many :member_avails
  has_many :members, through: :member_avails
end
