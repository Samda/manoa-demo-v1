class CreateTours < ActiveRecord::Migration[5.0]
  def change
    create_table :tours do |t|
    	t.string :name
    	t.integer :hotel_rating
    	t.integer :number_of_days
    	t.integer :number_of_night
    	t.integer :user_id
      t.timestamps
    end
  end
end
