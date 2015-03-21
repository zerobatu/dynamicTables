class CreateTenancyBases < ActiveRecord::Migration
  def change
    create_table :tenancy_bases do |t|
      t.text :other

      t.timestamps null: false
    end
  end
end
