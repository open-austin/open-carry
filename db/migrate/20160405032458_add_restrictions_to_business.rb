class AddRestrictionsToBusiness < ActiveRecord::Migration
  def change
    add_column :businesses, :conceal_ban, :boolean
    add_column :businesses, :open_ban, :boolean
    add_column :businesses, :alcohol51percent, :boolean
  end
end
