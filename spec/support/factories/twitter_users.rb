# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :twitter_user do
      twitter_id 1
      screen_name "MyString"
      name "MyString"
      description "MyString"
    end
end