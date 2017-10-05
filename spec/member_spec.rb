require('spec_helper')

describe(Member) do
  it { should have_many(:member_avails) }
  it { should have_many(:relationships) }
  it { should have_many(:groups) }
  it { should belong_to(:role) }
end

describe (Member) do
  it 'validates the presense of a member name' do
    the_member = Member.create(:name => '', :role_id => '')
    expect(the_member.save()).to(eq(false))
  end
end
