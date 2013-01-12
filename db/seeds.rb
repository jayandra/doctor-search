# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'rubygems'
require 'faker'
require 'factory_girl_rails'
5.times do |i|	#creating doctor automatically creates hospital and depeartments
	instance_variable_set("@service_#{i}", FactoryGirl.create(:service))
	instance_variable_set("@involvement_#{i}", FactoryGirl.create(:involvement, :hospital => eval("@service_#{i}").hospital))
	doc = eval("@involvement_#{i}").doctor
	doc.department.destroy
	doc.department = eval("@service_#{i}").department
	doc.save!
    # eval("@doctor_#{i}").hospitals << eval("@doctor_#{i}").department.hospital
end