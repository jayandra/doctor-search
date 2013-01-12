# Read about factories at https://github.com/thoughtbot/factory_girl
def rand_department_name
    "department - "+ Faker::Name.name
end

FactoryGirl.define do
  factory :department do
    name { rand_department_name }
  end
end
