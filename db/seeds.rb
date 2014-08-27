require 'faker'
require_relative 'factories.rb'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
10.times do
  User.create(username: Faker::Internet.user_name, password: Faker::Internet.password)
end
# 20.times do
#   user = FactoryGirl.create(:user)
#   (5..10).to_a.sample.times do
#     # user.urls<<FactoryGirl.create(:url)
#   end
# end
