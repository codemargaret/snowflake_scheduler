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
  erb(:edit_group)
end
# Edit group name
patch '/group/edit/:id' do
  @group = Group.find(params[:id])
  name =  params['new_group_name']
  @group.update({:name => name})
  redirect "/"
end

delete '/group/delete/:id' do
  @group = Group.find(params[:id])
  @group.delete
  redirect '/'
end

#MEMBER##############################
#Show create member page
get('/member/create') do
  @groups = Group.all
  erb(:create_member)
end

#Create a new member
post('/member/create') do
  group_ids = params['group_ids']
  name = params['member_name']
  if Member.create({:group_ids => group_ids, :name => name})
    redirect('/')
  else
    @not_saved = true
    @members = Member.all
    erb(:create_member)
  end
end

get('/member/edit/:id') do
  @member = Member.find(params[:id])
  erb(:edit_member)
end

patch '/member/edit/:id' do
  @member = Member.find(params[:id])
  name =  params['new_member_name']
  @member.update({:name => name})
  redirect "/"
end

delete '/member/delete/:id' do
  @member = Member.find(params[:id])
  @member.delete
  redirect '/'
end



#OTHER##############################
