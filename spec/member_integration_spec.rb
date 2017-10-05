require 'spec_helper'

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe 'the member creation path', {:type => :feature} do
  it 'takes the user to a homepage where they can add members' do
    visit '/'
    click_link('Create New Member')
    fill_in('member_name', :with => 'Dan')
    click_button('Create!')
    expect(page).to have_content('Dan')
  end
end

describe 'the member update path', {:type => :feature} do
  it 'allows the user to change the name of a member' do
    member = Member.create({:name => 'Dan'})
    visit '/'
    click_link('edit')
    fill_in('new_member_name', :with => 'Dan Garcia')
    click_button('Update Member')
    expect(page).to have_content('Dan Garcia')
  end
end

describe 'the member delete path', {:type => :feature} do
  it 'allows a user to delete a member' do
    member = Member.create({:name => 'Dan'})
    visit '/'
    click_link('delete')
    expect(page).not_to have_content("Dan")
  end
end
# 
# describe 'adding a group to a member', {:type => :feature} do
#   it 'allows a user add a group to a member' do
#     member = Member.create({:name => 'Dan'})
#     group = Group.create({:name => 'One Way Train'})
#     visit '/'
#     click_link('edit')
#     fill_in('new_member_name', :with => 'Dan')
#     select('One Way Train', :from => "group_id")
#     expect(page).not_to have_content("Dan")
#   end
# end
