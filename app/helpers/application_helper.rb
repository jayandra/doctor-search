module ApplicationHelper
	def active_link(controller, action = '')
    	params[:controller] == controller && (action == '' || params[:action] == action) ? 'active' : ''
  	end
end
