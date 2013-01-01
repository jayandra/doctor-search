class InvolvementsController < ApplicationController
  # GET /involvements
  # GET /involvements.json
  def index
    @involvements = Involvement.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @involvements }
    end
  end

  # GET /involvements/1
  # GET /involvements/1.json
  def show
    @involvement = Involvement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @involvement }
    end
  end

  # GET /involvements/new
  # GET /involvements/new.json
  def new
    @involvement = Involvement.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @involvement }
    end
  end

  # GET /involvements/1/edit
  def edit
    @involvement = Involvement.find(params[:id])
  end

  # POST /involvements
  # POST /involvements.json
  def create
    @involvement = Involvement.new(params[:involvement])

    respond_to do |format|
      if @involvement.save
        format.html { redirect_to @involvement, notice: 'Involvement was successfully created.' }
        format.json { render json: @involvement, status: :created, location: @involvement }
      else
        format.html { render action: "new" }
        format.json { render json: @involvement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /involvements/1
  # PUT /involvements/1.json
  def update
    @involvement = Involvement.find(params[:id])

    respond_to do |format|
      if @involvement.update_attributes(params[:involvement])
        format.html { redirect_to @involvement, notice: 'Involvement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @involvement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /involvements/1
  # DELETE /involvements/1.json
  def destroy
    @involvement = Involvement.find(params[:id])
    @involvement.destroy

    respond_to do |format|
      format.html { redirect_to involvements_url }
      format.json { head :no_content }
    end
  end
end
