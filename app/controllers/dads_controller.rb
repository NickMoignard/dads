class DadsController < ApplicationController
  before_action :set_dad, only: [:show, :edit, :update, :destroy]

  # GET /dads
  # GET /dads.json
  def index
    @dads = Dad.all
  end

  # GET /dads/1
  # GET /dads/1.json
  def show
  end

  # GET /dads/new
  def new
    @dad = Dad.new
  end

  # GET /dads/1/edit
  def edit
  end

  # POST /dads
  # POST /dads.json
  def create
    @dad = Dad.new(dad_params)

    respond_to do |format|
      if @dad.save
        format.html { redirect_to @dad, notice: 'Dad was successfully created.' }
        format.json { render :show, status: :created, location: @dad }
      else
        format.html { render :new }
        format.json { render json: @dad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dads/1
  # PATCH/PUT /dads/1.json
  def update
    respond_to do |format|
      if @dad.update(dad_params)
        format.html { redirect_to @dad, notice: 'Dad was successfully updated.' }
        format.json { render :show, status: :ok, location: @dad }
      else
        format.html { render :edit }
        format.json { render json: @dad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dads/1
  # DELETE /dads/1.json
  def destroy
    @dad.destroy
    respond_to do |format|
      format.html { redirect_to dads_url, notice: 'Dad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dad
      @dad = Dad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dad_params
      params.permit(:name, :rating)
    end
end
