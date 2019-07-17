class CreateCarOwners < ActiveRecord::Migration[5.2]
  def change
    create_table :car_owners do |t|
      t.integer :owner_id
      t.string :car_id
      t.boolean :is_current
    end
  end
end
