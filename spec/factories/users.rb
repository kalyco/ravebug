FactoryGirl.define do
	factory :user do
    email { Faker::Internet.user_name + "@" + Faker::Internet.domain_word + ".com" }
    password { Faker::Internet.password }
end