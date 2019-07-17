class AddForSaleToCar < ActiveRecord::Migration[5.2]
  def change
    add_column :cars, :for_sale, :boolean
  end
end
