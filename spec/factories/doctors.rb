# Read about factories at https://github.com/thoughtbot/factory_girl
def rand_doctor_name
    "doctor - "+Faker::Name.name
end

FactoryGirl.define do
  factory :doctor do            #It creates all doctor hospital and department
    checkup_time 1.5
    sequence (:email) { |n| "person#{n}@example.com" }
    message "doctor_message"
    mobile1 1234567890
    mobile2 9876543210
    phone1 123456
    phone2 1234567
    name {rand_doctor_name}

    department

    # primary_involvement   #first involvement created is assigned as primary unless other is selected
  end
end
