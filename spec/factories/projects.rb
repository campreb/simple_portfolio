FactoryGirl.define do
  factory :project do
    name { Faker::Commerce.product_name }
    category { Faker::Lorem.word }
    client { Faker::Company.name }
    url { Faker::Internet.url }
    github { Faker::Internet.url }
    description { Faker::Lorem.sentence }
    body { Faker::Lorem.paragraph }
  end
end
