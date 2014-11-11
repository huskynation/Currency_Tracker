class RemoveCountryIdFromCurrencies < ActiveRecord::Migration
  def change
remove_column :currencies, :country_id 

  end


end
