class AddCountryCodeToCurrencies < ActiveRecord::Migration
  def change
    add_column :currencies, :country_code, :string
  end
end
