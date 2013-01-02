# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :involvement do
    allow_appointment true
    price 1.5
    from {Time.now}
    to {Time.now+8.hours}
    
    hospital
  end
end
