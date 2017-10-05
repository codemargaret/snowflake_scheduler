require 'spec_helper'

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe 'the group creation path', {:type => :feature} do
  it 'takes the user to a homepage where they can add groups' do
    visit '/'
    click_link('Create New Group')
    fill_in('group_name', :with => 'One Way Train')
    click_button('Create!')
    expect(page).to have_content('One Way Train')
  end
end

describe 'the group update path', {:type => :feature} do
  it 'allows the user to change the name of a group' do
    group = Group.create({:name => 'One Way Train'})
    visit '/'
    click_link('edit')
    fill_in('new_group_name', :with => 'One Way Plane')
    click_button('Update Group')
    expect(page).to have_content('One Way Plane')
  end
end

describe 'the group delete path', {:type => :feature} do
  it 'allows a user to delete a group' do
    group = Group.create({:name => 'One Way Train'})
    visit '/'
    click_link('delete')
    expect(page).not_to have_content("One Way Train")
  end
end
