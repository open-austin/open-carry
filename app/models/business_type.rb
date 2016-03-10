class BusinessType < ActiveRecord::Base
  has_many :businesses
  validates_associated :businesses
end
