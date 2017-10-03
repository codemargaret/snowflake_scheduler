require('spec_helper')

describe(MemberAvail) do
  it 'checkes member availibility by day' do
    member1 = Member.create(:name => 'steve', :role_id => nil)
    member1_id = member1.id
    member2 = Member.create(:name => 'mike', :role_id => nil)
    member2_id = member2.id
    monday_day = Day.create(:name => 'Monday')
    tuesday_day = Day.create(:name => 'Tuesday')
    wednesday_day = Day.create(:name => 'Wednesday')
    thursday_day = Day.create(:name => 'Thursday')
    friday_day = Day.create(:name => 'Friday')
    saturday_day = Day.create(:name => 'Saturday')
    sunday_day = Day.create(:name => 'Sunday')
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



# fd

    days_available = MemberAvail.where(day_id: wednesday_day.id)
    # loop through all days
    days_available[0].member_id
    # => 1
    days_available[1].member_id
    # => 2
    # Member.find(1).name
    # # => "steve"
    # Member.find(2).name
    # => "mike"
# fd






    days_available = MemberAvail.where(member_id: member1.id)

    days_available2 = MemberAvail.where(member_id: member1.id, day_id: monday_day.id)

    days_available4 = MemberAvail.where(day_id: wednesday_day.id)

    available_day1 = MemberAvail.where(day_id: monday_day.id)
    available_day2 = MemberAvail.where(day_id: tuesday_day.id)
    available_day3 = MemberAvail.where(day_id: wednesday_day.id)
    available_day4 = MemberAvail.where(day_id: thursday_day.id)
    available_day5 = MemberAvail.where(day_id: friday_day.id)
    available_day6 = MemberAvail.where(day_id: saturday_day.id)
    available_day7 = MemberAvail.where(day_id: sunday_day.id)

    available_day1.length

    array_of_member_names1 = []
    x=0
    while x < available_day1.length
      member_id_gotten = available_day1[x].member_id
      name_of_person = Member.find(member_id_gotten).name
      x=x+1
      array_of_member_names1.push(name_of_person)
    end

    array_of_member_names2 = []
    x=0
    while x < available_day2.length
      member_id_gotten = available_day2[x].member_id
      name_of_person = Member.find(member_id_gotten).name
      x=x+1
      array_of_member_names2.push(name_of_person)
    end

    array_of_member_names3 = []
    x=0
    while x < available_day3.length
      member_id_gotten = available_day3[x].member_id
      name_of_person = Member.find(member_id_gotten).name
      x=x+1
      array_of_member_names3.push(name_of_person)
    end

    array2=[]
    array_of_member_id.each() do |single|
      days_available = MemberAvail.where(member_id: single)
      array2.push(days_available )
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
