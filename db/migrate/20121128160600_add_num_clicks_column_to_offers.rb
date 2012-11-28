class AddNumClicksColumnToOffers < ActiveRecord::Migration
  def change
    add_column :offers, :num_clicks, :integer, :null => false, :default => 0
  end
end
