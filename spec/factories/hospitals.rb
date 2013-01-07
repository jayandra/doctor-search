# Read about factories at https://github.com/thoughtbot/factory_girl
def rand_hospital_name
    "hospital - "+Faker::Name.name
end
FactoryGirl.define do
  factory :hospital do
    name {rand_hospital_name}
    address "address_name"
    city "city_name"
    phone1 1234567
    phone2 7654321
    image "image_name"
    description "hospital_description"
  end
end
