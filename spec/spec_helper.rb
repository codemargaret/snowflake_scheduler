
ENV['RACK_ENV'] = 'test'

require("bundler/setup")
Bundler.require(:default, :test)
set(:root, Dir.pwd())

require('capybara/rspec')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)
require('./app')

Dir[File.dirname(__FILE__) + '/../lib/*.rb'].each { |file| require file }

RSpec.configure do |config|
  config.after(:each) do
    Group.all.each do |group|
      group.destroy
    end
    Member.all.each do |member|
      member.destroy
    end
    Relationship.all.each do |relationship|
      relationship.destroy
    end
    Meetup.all.each do |meetup|
      meetup.destroy
    end
    Role.all.each do |role|
      role.destroy
    end
    MemberAvail.all.each do |memberavail|
      memberavail.destroy
    end
    Day.all.each do |day|
      day.destroy
    end
  end
end
