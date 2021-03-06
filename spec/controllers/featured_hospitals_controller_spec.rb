require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe FeaturedHospitalsController do

  # This should return the minimal set of attributes required to create a valid
  # FeaturedHospital. As you add validations to FeaturedHospital, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "from" => "2013-01-24 19:52:30" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # FeaturedHospitalsController. Be sure to keep this updated too.
  def valid_session
    {}
  end
  before do
    signed_in_as_a_admin_user
  end

  describe "GET index" do
    it "assigns all featured_hospitals as @featured_hospitals" do
      featured_hospital = FeaturedHospital.create! valid_attributes
      get :index, {}, valid_session
      assigns(:featured_hospitals).should eq([featured_hospital])
    end
  end

  describe "GET show" do
    it "assigns the requested featured_hospital as @featured_hospital" do
      featured_hospital = FeaturedHospital.create! valid_attributes
      get :show, {:id => featured_hospital.to_param}, valid_session
      assigns(:featured_hospital).should eq(featured_hospital)
    end
  end

  describe "GET new" do
    it "assigns a new featured_hospital as @featured_hospital" do
      get :new, {}, valid_session
      assigns(:featured_hospital).should be_a_new(FeaturedHospital)
    end
  end

  describe "GET edit" do
    it "assigns the requested featured_hospital as @featured_hospital" do
      featured_hospital = FeaturedHospital.create! valid_attributes
      get :edit, {:id => featured_hospital.to_param}, valid_session
      assigns(:featured_hospital).should eq(featured_hospital)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new FeaturedHospital" do
        expect {
          post :create, {:featured_hospital => valid_attributes}, valid_session
        }.to change(FeaturedHospital, :count).by(1)
      end

      it "assigns a newly created featured_hospital as @featured_hospital" do
        post :create, {:featured_hospital => valid_attributes}, valid_session
        assigns(:featured_hospital).should be_a(FeaturedHospital)
        assigns(:featured_hospital).should be_persisted
      end

      it "redirects to the created featured_hospital" do
        post :create, {:featured_hospital => valid_attributes}, valid_session
        response.should redirect_to(FeaturedHospital.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved featured_hospital as @featured_hospital" do
        # Trigger the behavior that occurs when invalid params are submitted
        FeaturedHospital.any_instance.stub(:save).and_return(false)
        post :create, {:featured_hospital => { "from" => "invalid value" }}, valid_session
        assigns(:featured_hospital).should be_a_new(FeaturedHospital)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        FeaturedHospital.any_instance.stub(:save).and_return(false)
        post :create, {:featured_hospital => { "from" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested featured_hospital" do
        featured_hospital = FeaturedHospital.create! valid_attributes
        # Assuming there are no other featured_hospitals in the database, this
        # specifies that the FeaturedHospital created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        FeaturedHospital.any_instance.should_receive(:update_attributes).with({ "from" => "2013-01-24 19:52:30" })
        put :update, {:id => featured_hospital.to_param, :featured_hospital => { "from" => "2013-01-24 19:52:30" }}, valid_session
      end

      it "assigns the requested featured_hospital as @featured_hospital" do
        featured_hospital = FeaturedHospital.create! valid_attributes
        put :update, {:id => featured_hospital.to_param, :featured_hospital => valid_attributes}, valid_session
        assigns(:featured_hospital).should eq(featured_hospital)
      end

      it "redirects to the featured_hospital" do
        featured_hospital = FeaturedHospital.create! valid_attributes
        put :update, {:id => featured_hospital.to_param, :featured_hospital => valid_attributes}, valid_session
        response.should redirect_to(featured_hospital)
      end
    end

    describe "with invalid params" do
      it "assigns the featured_hospital as @featured_hospital" do
        featured_hospital = FeaturedHospital.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        FeaturedHospital.any_instance.stub(:save).and_return(false)
        put :update, {:id => featured_hospital.to_param, :featured_hospital => { "from" => "invalid value" }}, valid_session
        assigns(:featured_hospital).should eq(featured_hospital)
      end

      it "re-renders the 'edit' template" do
        featured_hospital = FeaturedHospital.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        FeaturedHospital.any_instance.stub(:save).and_return(false)
        put :update, {:id => featured_hospital.to_param, :featured_hospital => { "from" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested featured_hospital" do
      featured_hospital = FeaturedHospital.create! valid_attributes
      expect {
        delete :destroy, {:id => featured_hospital.to_param}, valid_session
      }.to change(FeaturedHospital, :count).by(-1)
    end

    it "redirects to the featured_hospitals list" do
      featured_hospital = FeaturedHospital.create! valid_attributes
      delete :destroy, {:id => featured_hospital.to_param}, valid_session
      response.should redirect_to(featured_hospitals_url)
    end
  end

end
