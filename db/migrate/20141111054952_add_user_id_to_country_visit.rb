class AddUserIdToCountryVisit < ActiveRecord::Migration
  def change
    add_column :country_visits, :user_id, :integer
  end
end
