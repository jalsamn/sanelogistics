class ExternalSystemsController < ApplicationController
  before_action :set_external_system, only: [:show, :edit, :update, :destroy]

  # GET /external_systems
  # GET /external_systems.json
  def index
    @external_systems = ExternalSystem.all
  end

  # GET /external_systems/1
  # GET /external_systems/1.json
  def show
  end

  # GET /external_systems/new
  def new
    @external_system = ExternalSystem.new
  end

  # GET /external_systems/1/edit
  def edit
  end

  # POST /external_systems
  # POST /external_systems.json
  def create
    @external_system = ExternalSystem.new(external_system_params)

    respond_to do |format|
      if @external_system.save
        format.html { redirect_to @external_system, notice: 'External system was successfully created.' }
        format.json { render :show, status: :created, location: @external_system }
      else
        format.html { render :new }
        format.json { render json: @external_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /external_systems/1
  # PATCH/PUT /external_systems/1.json
  def update
    respond_to do |format|
      if @external_system.update(external_system_params)
        format.html { redirect_to @external_system, notice: 'External system was successfully updated.' }
        format.json { render :show, status: :ok, location: @external_system }
      else
        format.html { render :edit }
        format.json { render json: @external_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /external_systems/1
  # DELETE /external_systems/1.json
  def destroy
    @external_system.destroy
    respond_to do |format|
      format.html { redirect_to external_systems_url, notice: 'External system was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_external_system
      @external_system = ExternalSystem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def external_system_params
      params.require(:external_system).permit(:name)
    end
end
