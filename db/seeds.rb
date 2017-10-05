class Day <ActiveRecord::Base
  has_many :member_avails
  has_many :members, through: :member_avails
end

Day.destroy_all

  days = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
  ]

  days.each do |day|
    Day.create({:name => day})
  end
