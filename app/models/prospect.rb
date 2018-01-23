class Prospect < ApplicationRecord
  belongs_to :client
  belongs_to :campaign
  belongs_to :prospect_company
  belongs_to :prospect_characteristic
end
