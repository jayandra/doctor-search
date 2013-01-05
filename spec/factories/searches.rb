# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :search do
    doctor "MyString"
    department "MyString"
    hospital "MyString"
    search_template "MyString"
  end
end
