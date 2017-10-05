require('spec_helper')

describe(Member) do
  it { should have_many(:member_avails) }
  it { should have_many(:relationships) }
  it { should have_many(:groups) }
  it { should belong_to(:role) }
end
