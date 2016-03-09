class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.text :address1
      t.text :address2
      t.string :city
      t.string :state
      t.integer :user_id

      t.timestamps
    end
  end
end
