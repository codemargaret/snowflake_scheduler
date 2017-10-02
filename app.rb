require("bundler/setup")
require("sinatra/activerecord")
require("pry")
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/')do
  @groups = Group.all
  @members = Member.all
  erb(:index)
end

#GROUP##############################
get('/group/create') do
  @groups = Group.all
  erb(:create_group)
end

post('/group/create') do
  member_ids = params['member_ids']
  name = params['name']
  if Group.create({:member_ids => member_ids, :name => name})
    redirect('/')
  else
    @not_saved = true
    @groups = Group.all
    erb(:create_group)
  end
end





#MEMBER##############################






#OTHER##############################
