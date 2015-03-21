class CreateTenancyPeople < ActiveRecord::Migration
  def change
    create_table :tenancy_people do |t|
      t.text :other

      t.timestamps null: false
    end
  end
end
