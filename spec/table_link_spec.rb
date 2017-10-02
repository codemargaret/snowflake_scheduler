require('spec_helper')

describe(Day) do
  it { should have_many(:member_avails) }
  it { should have_many(:members) }
end

describe(MemberAvail) do
  it { should belong_to(:day) }
  it { should belong_to(:member) }
end

describe(Member) do
  it { should have_many(:member_avails) }
  it { should have_many(:relationships) }
  it { should have_many(:groups) }
  it { should belong_to(:role) }
end

describe(Role) do
  it { should have_many(:members) }
end

describe(Relationship) do
  it { should belong_to(:group) }
  it { should belong_to(:member) }
end

describe(Group) do
  it { should belong_to(:meetup) }
  it { should have_many(:relationships)}
end

describe(Meetup) do
  it { should have_many :groups}
end
