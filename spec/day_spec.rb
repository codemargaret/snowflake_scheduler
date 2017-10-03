require('spec_helper')

describe(MemberAvail) do
  it 'checkes member availibility by day' do
    member1 = Member.create(:name => 'steve', :role_id => nil)
    member1_id = member1.id
    member2 = Member.create(:name => 'mike', :role_id => nil)
    member2_id = member2.id
    monday_day = Day.create(:name => 'Monday')
    wednesday_day = Day.create(:name => 'Wednesday')
    friday_day = Day.create(:name => 'Friday')
    member_avails_row1 = MemberAvail.create(:day_id => monday_day.id, :member_id => member1.id)
    member_avails_row2 = MemberAvail.create(:day_id => wednesday_day.id, :member_id => member1.id)
    member_avails_row3 = MemberAvail.create(:day_id => wednesday_day.id, :member_id => member2.id)
    member_avails_row4 = MemberAvail.create(:day_id => friday_day.id, :member_id => member2.id)

    how_many_people_to_check = Member.all.length
    array_of_member_id = []
    x=0
    while x < how_many_people_to_check
      member_id_gotten = Member.all[x].id
      x=x+1
      array_of_member_id.push(member_id_gotten)

    end
    binding.pry
  end
end

#
# describe (Shoe) do
#   it 'validates presence of shoe brand, criteria 9' do
#     shoe = Shoe.create(:brand => '', :price => 30)
#     expect(shoe.save()).to(eq(false))
#   end
# end
