require 'spec_helper'

# monday_day1 = Day.create(:name => 'Monday')
# monday_day = Day.find_by(name: 'Monday')
# member1 = Member.create(:name => 'steve', :role_id => nil)
# member1_id = member1.id
# member_avails_row1 = MemberAvail.create(:day_id => monday_day.id, :member_id => member1.id)





describe(Day) do
  it 'checks member availibility by day' do
    monday_day1 = Day.create(:name => 'Monday')
    monday_day = Day.find_by(name: 'Monday')
    member1 = Member.create(:name => 'steve', :role_id => nil)
    member1_id = member1.id
    member_avails_row1 = MemberAvail.create(:day_id => monday_day.id, :member_id => member1.id)
    monday_day_id = monday_day.id
    @mon_avail = MemberAvail.where(day_id: monday_day_id)
    binding.pry
    monday_day.find_mon_avail
    # binding.pry
    expect(monday_day.find_mon_avail).to(eq(["steve"]))
  end
end
