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
#Show create group page
get('/group/create') do
  @members = Member.all
  erb(:create_group)
end

#Create a new group
post('/group/create') do
  member_ids = params['member_ids']
  name = params['group_name']
  if Group.create({:meetup_id => member_ids, :name => name})
    redirect('/')
  else
    @not_saved = true
    @groups = Group.all
    erb(:create_group)
  end
end

#Show edit page
get('/group/edit/:id') do
  @group = Group.find(params[:id])
  @members = Member.all
  erb(:edit_group)
end

# Edit group name
patch '/group/edit/:id' do
  @group = Group.find(params[:id])
  name =  params['new_group_name']
  @group.update({:name => name})
  redirect "/"
end

#Delete group
# delete '/group/delete/:id' do
#   @group = Group.find(params[:id])
#   @group.delete
#   redirect '/'
# end

get('/group/delete/:id') do
  Group.find(params['id']).destroy
  redirect('/')
end

#Show individual group page
get '/group/:id' do
  @group = Group.find(params[:id])
  @members = @group.members
  erb :group
end

#MEMBER##############################
#Show create member page
get('/member/create') do
  @groups = Group.all
  erb(:create_member)
end

#Create a new member
post('/member/create') do
  group_id = params['group_id']
  name = params['member_name']
  if Member.create({:group_ids => group_id, :name => name})
    redirect('/')
  else
    @not_saved = true
    @members = Member.all
    erb(:create_member)
  end
end

#Show the member edit page
get('/member/edit/:id') do
  @groups = Group.all
  @member = Member.find(params[:id])
  erb(:edit_member)
end

#Edit a member
patch '/member/edit/:id' do
  @member = Member.find(params[:id])
  name =  params['new_member_name']
  @member.update({:name => name})
  redirect "/"
end

#Delete a member
get('/member/delete/:id') do
  Member.find(params['id']).destroy
  redirect('/')
end

#Show individual member page
get '/member/:id' do
  @member = Member.find(params[:id])
  @groups = @member.groups
  erb :member
end



#OTHER##############################
