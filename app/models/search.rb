class Search < ActiveRecord::Base
  attr_accessible :department, :doctor, :hospital, :search_template

  validates_presence_of :search_template

  	def self.set_search_template(params)
  		template = nil
  		if params[:search][:doctor].present?
			template = 'doctors'
		elsif params[:search][:department].present? && template.nil?
			template = 'departments'
		else
			template = 'hospitals'
		end

		template
	end
end
