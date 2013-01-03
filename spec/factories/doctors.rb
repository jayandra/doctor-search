# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :doctor do
    checkup_time 1.5
    sequence (:email) { |n| "person#{n}@example.com" }
    message "doctor_message"
    mobile1 1234567890
    mobile2 9876543210
    phone1 123456
    phone2 1234567
    name "doctor_name"

    department

    # primary_involvement   #first involvement created is assigned as primary unless other is selected
  end
end
