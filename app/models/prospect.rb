class Prospect < ApplicationRecord
  belongs_to :client, optional: true
  belongs_to :campaign, optional: true
  belongs_to :prospect_company, optional: true
  belongs_to :prospect_characteristic, optional: true
end
