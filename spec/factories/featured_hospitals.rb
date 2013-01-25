# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :featured_hospital do
    from "2013-01-24 19:52:30"
    to "2013-01-24 19:52:30"
    payment false
    hospital nil
  end
end
