class Client < ApplicationRecord

  filterrific(
    default_filter_params: { sorted_by: 'created_at_desc' },
    available_filters: [
      :sorted_by,
      :search_query,
      :with_contact_level,
      :with_created_at_gte
    ]
  )

  belongs_to :client_company

  # Scope definitions. We implement all Filterrific filters through ActiveRecord
  # scopes. In this example we omit the implementation of the scopes for brevity.
  # Please see 'Scope patterns' for scope implementation details.
  scope :search_query, lambda { |query|
    # Filters students whose name or email matches the query
    # ...
  }
  scope :sorted_by, lambda { |sort_key|
    # Sorts students by sort_key
    # ...
  }
  scope :with_contact_level, lambda { |contact_level|
    # Filters students with any of the given country_ids
    # ...
  }
  scope :with_created_at_gte, lambda { |ref_date|
    # ...
  }

  # This method provides select options for the `sorted_by` filter select input.
  # It is called in the controller as part of `initialize_filterrific`.
  def self.options_for_sorted_by
    [
      ['Name (a-z)', 'first_name_asc'],
      ['Registration date (newest first)', 'created_at_desc'],
      ['Registration date (oldest first)', 'created_at_asc'],
      ['Contact Level', 'contact_level_asc']
    ]
  end

end
