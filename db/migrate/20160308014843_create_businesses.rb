class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :address
      t.string :type_of
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
