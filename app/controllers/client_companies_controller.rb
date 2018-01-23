class ClientCompaniesController < ApplicationController
  layout "layouts/clients/application"
  before_action :set_client_company, only: [:show, :edit, :update, :destroy]

  # GET /client_companies
  # GET /client_companies.json
  def index
    @client_companies = ClientCompany.all
  end

  # GET /client_companies/1
  # GET /client_companies/1.json
  def show
  end

  # GET /client_companies/new
  def new
    @client_company = ClientCompany.new
  end

  # GET /client_companies/1/edit
  def edit
  end

  # POST /client_companies
  # POST /client_companies.json
  def create
    @client_company = ClientCompany.new(client_company_params)

    respond_to do |format|
      if @client_company.save
        format.html { redirect_to @client_company, notice: 'Client company was successfully created.' }
        format.json { render :show, status: :created, location: @client_company }
      else
        format.html { render :new }
        format.json { render json: @client_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /client_companies/1
  # PATCH/PUT /client_companies/1.json
  def update
    respond_to do |format|
      if @client_company.update(client_company_params)
        format.html { redirect_to @client_company, notice: 'Client company was successfully updated.' }
        format.json { render :show, status: :ok, location: @client_company }
      else
        format.html { render :edit }
        format.json { render json: @client_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /client_companies/1
  # DELETE /client_companies/1.json
  def destroy
    @client_company.destroy
    respond_to do |format|
      format.html { redirect_to client_companies_url, notice: 'Client company was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client_company
      @client_company = ClientCompany.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def client_company_params
      params.require(:client_company).permit(:company_name, :street_address, :state, :postal_code, :city, :country)
    end
end
