class MemberAvail <ActiveRecord::Base
  belongs_to :day
  belongs_to :member

#   def self.find_avail(day)
#     found_day = Day.find_by(name: day)
#     avail = MemberAvail.where(day_id: found_day.id)
#     people =[]
#     x=0
#     while x < avail.length
#       member_id_gotten = avail[x].member_id
#       name_of_person = Member.find(member_id_gotten).name
#       x=x+1
#       people.push(name_of_person)
#     end
#     people
#   end
# end

  def self.find_group_mem_for_day(day, members)
    member_ids = members.map{|member| member.id}#makes an array of all the member ids, this COULD be in the get and then pass in just member_ids and day_id into the method argument MemberAvail.method(day_id, member_ids)
    day_members = []
    self.where(day_id: day.id, member_id: member_ids) do |member_avail|
      day_members.push(member_avail.member.name)
    end
    day_members.join(", ")
  end




# app.rb
# days = ["Sunday", "Monday", "Tuesday"]
# @hash = {}
# days.each do |d|
#   @hash[d] = MemberAvail.find_avail(d)
# end

# view
# @hash["Monday"]
# @hash["Tuesday"]


# @hash = {
#   "Sunday" => all members returned for Sunday,
#   "Monday" => members returned for Monday
#
# }


#
# @hash["Monday"].each do |member|
#   stuff about member
# end
