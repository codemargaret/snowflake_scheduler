class Day <ActiveRecord::Base
  has_many :member_avails
  has_many :members, through: :member_avails


  # monday_day1 = Day.create(:name => 'Monday')
  # monday_day = Day.find_by(name: 'Monday')
  # member1 = Member.create(:name => 'steve', :role_id => nil)
  # member1_id = member1.id
  # member_avails_row1 = MemberAvail.create(:day_id => monday_day.id, :member_id => member1.id)



  # def find_mon_avail
  #   monday_day_id = monday_day.id
  #   mon_avail = MemberAvail.where(day_id: monday_day_id)
  #
  #   mon_people =[]
  #   x=0
  #   while x < mon_avail.length
  #     member_id_gotten = mon_avail[x].member_id
  #     name_of_person = Member.find(member_id_gotten).name
  #     x=x+1
  #     mon_people.push(name_of_person)
  #   end
  #   mon_people
  # end


end

# has_many :catalogues
#   has_many :shoes, through: :catalogues
#   validates(:name, :presence => true)
#   validates(:name, {:presence => true, :length => {:maximum => 100}})
#   validates(:name, uniqueness: true)
#   before_save(:cap_first_letter)
#
#   private
#
#   def cap_first_letter
#     self.name=(name.split(' ').map {|x| x.capitalize}.join(' '))
#   end
