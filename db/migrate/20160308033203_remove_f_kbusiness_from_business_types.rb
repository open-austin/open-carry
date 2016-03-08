class RemoveFKbusinessFromBusinessTypes < ActiveRecord::Migration
  def change
    remove_foreign_key :business_types, column: :business_id
  end
end
