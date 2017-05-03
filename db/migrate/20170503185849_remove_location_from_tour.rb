class RemoveLocationFromTour < ActiveRecord::Migration[5.0]
  def change
    remove_column :tours, :location
  end
end
