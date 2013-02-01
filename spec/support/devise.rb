module ControllerHelpers
  def sign_in(user = double('user'))
    if user.nil?
      request.env['warden'].stub(:authenticate!).
        and_throw(:warden, {:scope => :user})
      controller.stub :current_user => nil
    else
      request.env['warden'].stub :authenticate! => user
      controller.stub :current_user => user
    end
  end
end

# http://stackoverflow.com/questions/5865555/how-to-do-integration-testing-with-rspec-and-devise-cancan
#module for helping controller specs
module ValidUserHelper
  def signed_in_as_a_admin_user
    @user ||= FactoryGirl.create :admin
    sign_in @user # method from devise:TestHelpers
  end
end

# module for helping request specs
module ValidUserRequestHelper
  # for use in request specs
  def sign_in_as_a_admin_user
    @user ||= FactoryGirl.create :admin
    post_via_redirect user_session_path, 'user[email]' => @user.email, 'user[password]' => @user.password
  end
end


# http://www.clevertakes.com/blog/2013/01/30/how-do-i-add-devise-login-method-to-my-rspec-feature-test/
include Warden::Test::Helpers
module FeatureHelpers
  def sign_in_as_a_admin_user
    user = FactoryGirl.create(:admin)
    login_as user, scope: :user
    user
  end
end

RSpec.configure do |config|
  config.include Devise::TestHelpers, :type => :controller
  config.include ControllerHelpers, :type => :controller
  config.include ValidUserHelper, :type => :controller
  config.include ValidUserRequestHelper, :type => :request
  config.include FeatureHelpers, type: :feature
end