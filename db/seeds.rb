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
	d = FactoryGirl.create(:doctor)

	dep1 = d.department
	hos1 = d.hospitals.first
	hos2 = d.hospitals.last
	[d, dep1, hos1, hos2].each do |entry|
		entry.name = entry.class.to_s+" - #{i+1}"
		entry.save
	end
end