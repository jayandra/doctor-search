# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :doctor do
    checkup_time 1.5
    email "MyString"
    message "MyText"
    mobile1 "MyString"
    mobile2 "MyString"
    phone1 "MyString"
    phone2 "MyString"
    primary_involvement 1
    name "MyString"
    department nil
  end
end
