class ProspectCompaniesController < ApplicationController
  before_action :set_prospect_company, only: [:show, :edit, :update, :destroy]

  # GET /prospect_companies
  # GET /prospect_companies.json
  def index
    @prospect_companies = ProspectCompany.all
  end

  # GET /prospect_companies/1
  # GET /prospect_companies/1.json
  def show
  end

  # GET /prospect_companies/new
  def new
    @prospect_company = ProspectCompany.new
  end

  # GET /prospect_companies/1/edit
  def edit
  end

  # POST /prospect_companies
  # POST /prospect_companies.json
  def create
    @prospect_company = ProspectCompany.new(prospect_company_params)

    respond_to do |format|
      if @prospect_company.save
        format.html { redirect_to @prospect_company, notice: 'Prospect company was successfully created.' }
        format.json { render :show, status: :created, location: @prospect_company }
      else
        format.html { render :new }
        format.json { render json: @prospect_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prospect_companies/1
  # PATCH/PUT /prospect_companies/1.json
  def update
    respond_to do |format|
      if @prospect_company.update(prospect_company_params)
        format.html { redirect_to @prospect_company, notice: 'Prospect company was successfully updated.' }
        format.json { render :show, status: :ok, location: @prospect_company }
      else
        format.html { render :edit }
        format.json { render json: @prospect_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prospect_companies/1
  # DELETE /prospect_companies/1.json
  def destroy
    @prospect_company.destroy
    respond_to do |format|
      format.html { redirect_to prospect_companies_url, notice: 'Prospect company was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prospect_company
      @prospect_company = ProspectCompany.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prospect_company_params
      params.require(:prospect_company).permit(:company_name, :street_address, :state, :postal_code, :city, :country)
    end
end
