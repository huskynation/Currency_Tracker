class CreateCountryVisits < ActiveRecord::Migration
  def change
    create_table :country_visits do |t|

      t.timestamps
    end
  end
end
