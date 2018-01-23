class CampaignResultsController < ApplicationController
  layout "layouts/campaigns/application"
  before_action :set_campaign_result, only: [:show, :edit, :update, :destroy]

  # GET /campaign_results
  # GET /campaign_results.json
  def index
    @campaign_results = CampaignResult.all
  end

  # GET /campaign_results/1
  # GET /campaign_results/1.json
  def show
  end

  # GET /campaign_results/new
  def new
    @campaign_result = CampaignResult.new
  end

  # GET /campaign_results/1/edit
  def edit
  end

  # POST /campaign_results
  # POST /campaign_results.json
  def create
    @campaign_result = CampaignResult.new(campaign_result_params)

    respond_to do |format|
      if @campaign_result.save
        format.html { redirect_to @campaign_result, notice: 'Campaign result was successfully created.' }
        format.json { render :show, status: :created, location: @campaign_result }
      else
        format.html { render :new }
        format.json { render json: @campaign_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /campaign_results/1
  # PATCH/PUT /campaign_results/1.json
  def update
    respond_to do |format|
      if @campaign_result.update(campaign_result_params)
        format.html { redirect_to @campaign_result, notice: 'Campaign result was successfully updated.' }
        format.json { render :show, status: :ok, location: @campaign_result }
      else
        format.html { render :edit }
        format.json { render json: @campaign_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /campaign_results/1
  # DELETE /campaign_results/1.json
  def destroy
    @campaign_result.destroy
    respond_to do |format|
      format.html { redirect_to campaign_results_url, notice: 'Campaign result was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campaign_result
      @campaign_result = CampaignResult.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def campaign_result_params
      params.require(:campaign_result).permit(:campaign_id, :campaign_reply_rate, :campaign_click_through_rate, :campaign_open_rate, :total_replies, :total_positive_replies, :total_opens, :total_clicks)
    end
end
