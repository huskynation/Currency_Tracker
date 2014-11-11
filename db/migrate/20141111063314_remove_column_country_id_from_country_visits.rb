class RemoveColumnCountryIdFromCountryVisits < ActiveRecord::Migration
  def change

  	remove_column :country_visits, :country_id
  end


end
