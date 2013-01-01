# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :involvement do
    allow_appointment false
    price 1.5
    from "2012-12-31 23:47:45"
    to "2012-12-31 23:47:45"
    hospital nil
  end
end
