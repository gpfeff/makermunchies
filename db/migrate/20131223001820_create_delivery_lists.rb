class CreateDeliveryLists < ActiveRecord::Migration
  def change
    create_table :delivery_lists do |t|

      t.timestamps
    end
  end
end
