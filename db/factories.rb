require "faker"
require "factory_girl"
FactoryGirl.define do
  factory :user do
    username Faker::Internet.user_name
    password Faker::Internet.password
  end
  factory :url do
    long_url Faker::Internet.url
    short_url nil
    counter nil
    user nil
  end
end
