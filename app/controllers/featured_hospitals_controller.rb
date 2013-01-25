class FeaturedHospitalsController < ApplicationController
  load_and_authorize_resource
  
  # GET /featured_hospitals
  # GET /featured_hospitals.json
  def index
    @featured_hospitals = FeaturedHospital.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @featured_hospitals }
    end
  end

  # GET /featured_hospitals/1
  # GET /featured_hospitals/1.json
  def show
    @featured_hospital = FeaturedHospital.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @featured_hospital }
    end
  end

  # GET /featured_hospitals/new
  # GET /featured_hospitals/new.json
  def new
    @featured_hospital = FeaturedHospital.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @featured_hospital }
    end
  end

  # GET /featured_hospitals/1/edit
  def edit
    @featured_hospital = FeaturedHospital.find(params[:id])
  end

  # POST /featured_hospitals
  # POST /featured_hospitals.json
  def create
    @featured_hospital = FeaturedHospital.new(params[:featured_hospital])

    respond_to do |format|
      if @featured_hospital.save
        format.html { redirect_to @featured_hospital, notice: 'Featured hospital was successfully created.' }
        format.json { render json: @featured_hospital, status: :created, location: @featured_hospital }
      else
        format.html { render action: "new" }
        format.json { render json: @featured_hospital.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /featured_hospitals/1
  # PUT /featured_hospitals/1.json
  def update
    @featured_hospital = FeaturedHospital.find(params[:id])

    respond_to do |format|
      if @featured_hospital.update_attributes(params[:featured_hospital])
        format.html { redirect_to @featured_hospital, notice: 'Featured hospital was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @featured_hospital.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /featured_hospitals/1
  # DELETE /featured_hospitals/1.json
  def destroy
    @featured_hospital = FeaturedHospital.find(params[:id])
    @featured_hospital.destroy

    respond_to do |format|
      format.html { redirect_to featured_hospitals_url }
      format.json { head :no_content }
    end
  end
end
