class HospitalsController < ApplicationController
  load_and_authorize_resource
  
  # GET /hospitals
  # GET /hospitals.json
  def index
    @hospitals = Hospital.all
    if current_user.try(:role) == 2
      hos = current_user.hospital
      if hos
        @hospitals.delete(hos)
        @hospitals.insert(0,hos)
      end
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hospitals }
    end
  end

  # GET /hospitals/1
  # GET /hospitals/1.json
  def show
    @hospital = Hospital.includes(:departments).find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hospital }
    end
  end

  # GET /hospitals/new
  # GET /hospitals/new.json
  def new
    # @hospital = Hospital.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hospital }
    end
  end

  # GET /hospitals/1/edit
  def edit
    # @hospital = Hospital.find(params[:id])
    @hospital = current_user.hospital if current_user.try(:role) == 2
  end

  # POST /hospitals
  # POST /hospitals.json
  def create
    # @hospital = Hospital.new(params[:hospital])
    @hospital = current_user.build_hospital(params[:hospital]) if current_user.try(:role) == 2

    respond_to do |format|
      if @hospital.save
        format.html { redirect_to @hospital, notice: 'Hospital was successfully created.' }
        format.json { render json: @hospital, status: :created, location: @hospital }
      else
        format.html { render action: "new" }
        format.json { render json: @hospital.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hospitals/1
  # PUT /hospitals/1.json
  def update
    # @hospital = Hospital.find(params[:id])
     @hospital = current_user.hospital if current_user.try(:role) == 2

    respond_to do |format|
      if @hospital.update_attributes(params[:hospital])
        format.html { redirect_to @hospital, notice: 'Hospital was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hospital.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hospitals/1
  # DELETE /hospitals/1.json
  def destroy
    # @hospital = Hospital.find(params[:id])
    @hospital = current_user.hospital if current_user.try(:role) == 2
    @hospital.destroy

    respond_to do |format|
      format.html { redirect_to hospitals_url }
      format.json { head :no_content }
    end
  end
end
