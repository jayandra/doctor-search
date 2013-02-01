# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
	factory :user do
		sequence :email do |n|
			"person#{n}@example.com"
		end
		password "password"
		role 1

		factory :admin do |n|
			role 10
		end
		factory :hospital_admin do |n|
			role 2
		end
		factory :doctor_admin do |n|
			role 3
		end
	end
end
