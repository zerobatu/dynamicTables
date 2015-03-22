class CreateTenancyBases < ActiveRecord::Migration
  def change
    create_table :tenancy_bases do |t|
      t.text :others
      t.string :type

      t.timestamps null: false
    end
  end
end
