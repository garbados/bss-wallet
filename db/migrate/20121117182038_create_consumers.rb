class CreateConsumers < ActiveRecord::Migration
  def change
    create_table :consumers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.integer :zip


      t.timestamps
    end
  end
end
