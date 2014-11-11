class AddEmailToCountryVisit < ActiveRecord::Migration
  def change
    add_column :country_visits, :email, :string
  end
end
