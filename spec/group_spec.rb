require('spec_helper')

describe(Group) do
  it { should belong_to(:meetup) }
  it { should have_many(:relationships)}
end

# describe (Shoe) do
#   it 'validates presence of shoe brand, criteria 9' do
#     shoe = Shoe.create(:brand => '', :price => 30)
#     expect(shoe.save()).to(eq(false))
#   end
# end

describe (Group) do
  it 'validates the presense of a group name' do
    the_group = Group.create(:name => '', :meetup_id => '')
    expect(the_group.save()).to(eq(false))
  end
end
