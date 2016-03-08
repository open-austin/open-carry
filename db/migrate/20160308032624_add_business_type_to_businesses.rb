class AddBusinessTypeToBusinesses < ActiveRecord::Migration
  def change
    add_reference :businesses, :business_type, index: true, foreign_key: true
  end
end
