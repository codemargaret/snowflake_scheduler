require('spec_helper')

describe(Group) do
  it { should belong_to(:meetup) }
  it { should have_many(:relationships)}
end
