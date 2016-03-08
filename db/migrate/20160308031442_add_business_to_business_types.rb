class AddBusinessToBusinessTypes < ActiveRecord::Migration
  def change
    add_reference :business_types, :business, index: true, foreign_key: true
  end
end
