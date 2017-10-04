class MemberAvail <ActiveRecord::Base
  belongs_to :day
  belongs_to :member

  # available_day1 = MemberAvail.where(day_id: monday_day.id)
  # available_day2 = MemberAvail.where(day_id: tuesday_day.id)
  # available_day3 = MemberAvail.where(day_id: wednesday_day.id)
  # available_day4 = MemberAvail.where(day_id: thursday_day.id)
  # available_day5 = MemberAvail.where(day_id: friday_day.id)
  # available_day6 = MemberAvail.where(day_id: saturday_day.id)
  # available_day7 = MemberAvail.where(day_id: sunday_day.id)

end
