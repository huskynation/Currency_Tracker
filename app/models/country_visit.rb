class CountryVisit < ActiveRecord::Base
  belongs_to :country
  has_many :currencies
  has_many :users
  validates_presence_of :time, :date, :email
  validates :message, length: {maximum: 200, too_long: '%{count} characters is the maximum allowed'}


  validates_associated : :user, :country


belongs_to :user
belongs_to :currencies

	scope :visited, conditions: {visited: true}
  	scope :not_visited, conditions: {visited: false}


end

