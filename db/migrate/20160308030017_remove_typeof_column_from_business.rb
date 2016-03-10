class RemoveTypeofColumnFromBusiness < ActiveRecord::Migration
  def change
    remove_column :businesses, :type_of
  end
end
