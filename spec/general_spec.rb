require('spec_helper')

describe(Day) do

  it 'checks member availibility by day' do
    # monday_day1 = Day.create(:name => 'Monday')
    monday_day = Day.find_by(name: 'Monday')
    binding.pry
    member1 = Member.create(:name => 'steve', :role_id => nil)
    member2 = Member.create(:name => 'mike', :role_id => nil)
    member_avails_row1 = MemberAvail.create(:day_id => monday_day.id, :member_id => member1.id)
    member_avails_row2 = MemberAvail.create(:day_id => monday_day.id, :member_id => member2.id)
    expect(MemberAvail.find_avail('Monday')).to(eq(["steve", "mike"]))
  end 
end
