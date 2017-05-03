class AddAccountIdToTour < ActiveRecord::Migration[5.0]
  def change
    add_column :tours, :account_id, :integer
    add_column :tours, :description, :text
    remove_column :tours, :user_id, :integer
  end
end
