class WelcomeController < ApplicationController
	def index
		@featured_hospitals = FeaturedHospital.includes(:hospital).all
		@all_hospitals = Hospital.pluck(:name)
		@all_specialities = Department.pluck(:name)

		respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @featured_hospitals }
    end
	end
end
