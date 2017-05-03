class AddMoreFieldToAccounts < ActiveRecord::Migration[5.0]
  def change
    add_column :accounts, :documents, :text
    add_column :accounts, :quotations, :text
  end
end
