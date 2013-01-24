class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
  	flash[:error] = "Sorry, you do not have a clearance to access that page  !!!"
  	redirect_to root_url
  end
end
