class AddNumViewsColumnToOffers < ActiveRecord::Migration
  def change
    add_column :offers, :num_views, :integer, :null => false, :default => 0
  end
end
