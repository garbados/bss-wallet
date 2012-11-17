class ChangeZipTypeToStringFromInt < ActiveRecord::Migration
  def change
  	change_table :merchants do |t|
  		t.change :zip, :string
  	end
  end
end
