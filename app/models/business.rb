class Business < ActiveRecord::Base
  belongs_to        :business_type
  validates         :name, presence: true
  validates         :business_type_id, presence: true
  geocoded_by       :address
  after_validation  :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }
  scope             :all_guns_banned,   -> { where('conceal_ban= ? AND open_ban= ?', true, true) }
  scope             :concealed_banned,  -> { where('alcohol51percent= ? OR conceal_ban= ?', true, true) }

end
