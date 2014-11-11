class AddColumnCodeToCountryVisits < ActiveRecord::Migration
  def change
    add_column :country_visits, :code, :string
  end
end
