# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :stage_option do
    name             { "#{Faker::Commerce.color} #{Faker::Name.last_name}" }
    default_value    { Faker::Lorem.word }
    description      { Faker::Lorem.sentence }
    # TODO: this could probably be a bit more sophisticated
    order            { rand(10) }
  end
end
