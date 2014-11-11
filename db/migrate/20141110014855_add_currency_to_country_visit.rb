class AddCurrencyToCountryVisit < ActiveRecord::Migration
  def change
    add_column :country_visits, :currency_id, :integer
  end
end
