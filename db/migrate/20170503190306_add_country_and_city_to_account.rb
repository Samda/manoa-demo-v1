class AddCountryAndCityToAccount < ActiveRecord::Migration[5.0]
  def change
    add_column :accounts, :country, :string
    add_column :accounts, :city, :string
  end
end
