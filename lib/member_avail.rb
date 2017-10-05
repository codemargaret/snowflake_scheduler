class MemberAvail <ActiveRecord::Base
  belongs_to :day
  belongs_to :member

  def self.find_avail(day)
    found_day = Day.find_by(name: day)
    MemberAvail.where(day_id: found_day.id).map do |availability|
      Member.find(availability.member_id).name
    end
    # people =[]
    # x=0
    # while x < avail.length
    #   member_id_gotten = avail[x].member_id
    #   name_of_person = Member.find(member_id_gotten).name
    #   x=x+1
    #   people.push(name_of_person)
    # end
    # people
  end
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
