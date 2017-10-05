require('spec_helper')

describe(MemberAvail) do
  it { should belong_to(:day) }
  it { should belong_to(:member) }
end

describe(MemberAvail) do
  it 'checks member availibility by day' do
    monday = Day.create(:name => 'Monday')
    member1 = Member.create(:name => 'steve', :role_id => nil)
    member2 = Member.create(:name => 'mike', :role_id => nil)
    member_avails_row1 = MemberAvail.create(:day_id => monday.id, :member_id => member1.id)
    member_avails_row2 = MemberAvail.create(:day_id => monday.id, :member_id => member2.id)
    expect(MemberAvail.find_avail('Monday')).to(eq(["steve", "mike"]))
  end
end
