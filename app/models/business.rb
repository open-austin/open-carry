class Business < ActiveRecord::Base
  belongs_to        :business_type
  validates         :name, presence: true
  validates         :business_type_id, presence: true
  geocoded_by       :address
  after_validation  :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }
  # add scope restrictions per ordinance
end
