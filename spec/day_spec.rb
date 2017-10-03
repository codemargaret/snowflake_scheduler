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

    available_day1 = MemberAvail.where(day_id: monday_day.id)
    available_day2 = MemberAvail.where(day_id: tuesday_day.id)
    available_day3 = MemberAvail.where(day_id: wednesday_day.id)
    available_day4 = MemberAvail.where(day_id: thursday_day.id)
    available_day5 = MemberAvail.where(day_id: friday_day.id)
    available_day6 = MemberAvail.where(day_id: saturday_day.id)
    available_day7 = MemberAvail.where(day_id: sunday_day.id)


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

    array_of_member_names4 = []
    x=0
    while x < available_day4.length
      member_id_gotten = available_day4[x].member_id
      name_of_person = Member.find(member_id_gotten).name
      x=x+1
      array_of_member_names4.push(name_of_person)
    end

    array_of_member_names5 = []
    x=0
    while x < available_day5.length
      member_id_gotten = available_day5[x].member_id
      name_of_person = Member.find(member_id_gotten).name
      x=x+1
      array_of_member_names5.push(name_of_person)
    end

    array_of_member_names6 = []
    x=0
    while x < available_day6.length
      member_id_gotten = available_day6[x].member_id
      name_of_person = Member.find(member_id_gotten).name
      x=x+1
      array_of_member_names6.push(name_of_person)
    end

    array_of_member_names7 = []
    x=0
    while x < available_day7.length
      member_id_gotten = available_day7[x].member_id
      name_of_person = Member.find(member_id_gotten).name
      x=x+1
      array_of_member_names7.push(name_of_person)
    end

    expect(array_of_member_names3).to(eq(["steve", "mike"]))
  end
end
