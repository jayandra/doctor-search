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
	instance_variable_set("@doctor_#{i}", FactoryGirl.create(:doctor))
    eval("@doctor_#{i}").hospitals << eval("@doctor_#{i}").department.hospital
end