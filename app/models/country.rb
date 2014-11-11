class Country < ActiveRecord::Base
  belongs_to :user
  
  self.primary_key = :code
  attr_accessible :name, :code, :visited

  validates_presence_of :name
  validates_presence_of :code
  validates_uniqueness_of :code, allow_blank: true


  has_many :country_visits, :foreign_key => "code", :primary_key => "code"

  has_one :currency, :foreign_key=> "country_code", :primary_key => "code"
  has_many :collected_by, through: :country_visits, source: :user

  # accepts_nested_attributes_for :currencies, allow_destroy: true

  scope :visited, conditions: {visited: true}
  scope :not_visited, conditions: {visited: false}
end
