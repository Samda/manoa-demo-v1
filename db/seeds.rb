# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

user1 = User.create!(email: "demo1@manao.com", password: "12345678")

account = user1.accounts.create!(
					agency_name: "Angkor Travel",
					bank_detail: "xxx-xxx-xxx-xxx",
					agency_sms: "012-999-999",
					whats_app: "angkor-travel",
					we_chat: "angkor-travel",
					agency_email: "admin@angkortravel.com",
					documents: "some documents"
					quotations: "some qoutations"
					country: "Cambodia"
					city: "Siem Reap"
				)

tour = account.tours.create!(name: "Angkor1",
										hotel_rating: 5,
										number_of_days: 3,
										number_of_night: 2,
										location: "Siem Reap")
