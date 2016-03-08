class Business < ActiveRecord::Base
  geocoded_by       :full_street_address
  after_validation  :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }     
end
