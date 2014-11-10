class CountryVisit < ActiveRecord::Base
  	belongs_to :country
  	has_many :currencies
	validates_presence_of :time, :date, :email
	validates :message, length: { maximum: 200,
    too_long: "%{count} characters is the maximum allowed" }
end
