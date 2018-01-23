class ProspectCharacteristicsController < ApplicationController
  before_action :set_prospect_characteristic, only: [:show, :edit, :update, :destroy]

  # GET /prospect_characteristics
  # GET /prospect_characteristics.json
  def index
    @prospect_characteristics = ProspectCharacteristic.all
  end

  # GET /prospect_characteristics/1
  # GET /prospect_characteristics/1.json
  def show
  end

  # GET /prospect_characteristics/new
  def new
    @prospect_characteristic = ProspectCharacteristic.new
  end

  # GET /prospect_characteristics/1/edit
  def edit
  end

  # POST /prospect_characteristics
  # POST /prospect_characteristics.json
  def create
    @prospect_characteristic = ProspectCharacteristic.new(prospect_characteristic_params)

    respond_to do |format|
      if @prospect_characteristic.save
        format.html { redirect_to @prospect_characteristic, notice: 'Prospect characteristic was successfully created.' }
        format.json { render :show, status: :created, location: @prospect_characteristic }
      else
        format.html { render :new }
        format.json { render json: @prospect_characteristic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prospect_characteristics/1
  # PATCH/PUT /prospect_characteristics/1.json
  def update
    respond_to do |format|
      if @prospect_characteristic.update(prospect_characteristic_params)
        format.html { redirect_to @prospect_characteristic, notice: 'Prospect characteristic was successfully updated.' }
        format.json { render :show, status: :ok, location: @prospect_characteristic }
      else
        format.html { render :edit }
        format.json { render json: @prospect_characteristic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prospect_characteristics/1
  # DELETE /prospect_characteristics/1.json
  def destroy
    @prospect_characteristic.destroy
    respond_to do |format|
      format.html { redirect_to prospect_characteristics_url, notice: 'Prospect characteristic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prospect_characteristic
      @prospect_characteristic = ProspectCharacteristic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prospect_characteristic_params
      params.require(:prospect_characteristic).permit(:job_title, :seniority_level, :function, :industry, :company_name, :company_headcount, :past_company, :company_type, :school, :language, :years_in_current_position, :years_at_current_company, :years_of_experience)
    end
end
