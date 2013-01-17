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

	def find_doctors
		doctors = Doctor.scoped.order("doctors.name")
		doctors = doctors.doc_like(doctor) if doctor.present?
		doctors = doctors.joins(:department).dep_like(department) if department.present?
		doctors = doctors.joins(:hospitals).hos_like(hospital) if hospital.present?
		
		doctors
	end

	def find_departments
		departments = Department.scoped.order(:name)
		departments = departments.dep_like(department) if department.present?
		departments = departments.joins(:hospitals).hos_like(hospital) if hospital.present?
	    
	    departments
	end

	def find_hospitals
		hospitals = Hospital.order(:name).hos_like(hospital)
	end
end
