class AddCountryToCountryVisit < ActiveRecord::Migration
  def change
    add_column :country_visits, :country_id, :integer
  end
end
