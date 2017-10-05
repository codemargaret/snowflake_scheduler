require('spec_helper')

describe(Relationship) do
  it { should belong_to(:group) }
  it { should belong_to(:member) }
end
