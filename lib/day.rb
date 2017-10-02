class Day <ActiveRecord::Base
  has_many :member_avails
  has_many :members, through: :member_avails
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
