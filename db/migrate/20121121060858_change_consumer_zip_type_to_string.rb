class ChangeConsumerZipTypeToString < ActiveRecord::Migration
  def change
  	change_table :consumers do |t|
  		t.change :zip, :string
  	end
  end
end
