class DashboardController < ApplicationController
  layout "layouts/dashboard/application"
  def index
    @total_clients = Client.all
    @live_clients = Client.all
    @live_campaigns = Campaign.all
    @total_prospects = Prospect.all
    @prospects_in_sequence = Prospect.all
  end
end
