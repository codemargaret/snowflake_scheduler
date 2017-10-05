class MemberAvail <ActiveRecord::Base
  belongs_to :day
  belongs_to :member

  def self.find_avail(day)
    found_day = Day.find_by(name: day)
    MemberAvail.where(day_id: found_day.id).map do |availability|
      Member.find(availability.member_id).name
    end
  end
end
