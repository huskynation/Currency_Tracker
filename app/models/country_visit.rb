class CountryVisit < ActiveRecord::Base

  belongs_to :country, :foreign_key => :code
  belongs_to :user
  belongs_to :currencies

  validates_associated :user, :country

  # scope :visited, conditions: {visited: true}
  # scope :not_visited, conditions: {visited: false}

end










