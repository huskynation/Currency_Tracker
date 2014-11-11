class AddStatusToCountryVisit < ActiveRecord::Migration
  def change
    add_column :country_visits, :status, :string
  end
end
