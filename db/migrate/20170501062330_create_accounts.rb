class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
    	t.string :agency_name
    	t.string :bank_detail
    	t.string :agency_sms
    	t.string :whats_app
    	t.string :we_chat
    	t.string :agency_email
    	t.integer :user_id
      t.timestamps
    end
  end
end
