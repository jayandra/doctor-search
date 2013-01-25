class WelcomeController < ApplicationController
	def index
		@featured_hospitals = FeaturedHospital.includes(:hospital).all

		respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @featured_hospitals }
    end
	end
end
