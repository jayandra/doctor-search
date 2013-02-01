require 'spec_helper'

describe "FeaturedHospitals" do
  describe "GET /featured_hospitals" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      sign_in_as_a_admin_user
      get featured_hospitals_path
      response.status.should be(200)
    end
  end
end
