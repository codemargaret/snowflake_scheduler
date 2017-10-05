require('spec_helper')

describe(Day) do
  it { should have_many(:member_avails) }
  it { should have_many(:members) }
end
