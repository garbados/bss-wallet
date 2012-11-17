class CreateMerchants < ActiveRecord::Migration
  def change
    create_table :merchants do |t|
      t.string :store_name
      t.string :rep_first_name
      t.string :rep_last_name
      t.string :email
      t.string :address_st_1
      t.string :address_st_2
      t.string :city
      t.string :state
      t.integer :zip

      t.timestamps
    end
  end
end
