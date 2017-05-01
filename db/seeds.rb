# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

user1 = User.create!(email: "demo1@manao.com", password: "12345678")
user1.accounts.create!(agency_name: "Angkor Travel", 
					bank_detail: "xxx-xxx-xxx-xxx",
					agency_sms: "012-999-999",
					whats_app: "angkor-travel",
					we_chat: "angkor-travel",
					agency_email: "admin@angkortravel.com"
					)

user1.tours.create!(name: "Angkor1",
										hotel_rating: 5,
										number_of_days: 3,
										number_of_night: 2,
										location: "Siem Reap")

user1.tours.create!(name: "Angkor2",
										hotel_rating: 3,
										number_of_days: 1,
										number_of_night: 1,
										location: "Siem Reap")



user2 = User.create!(email: "demo2@manao.com", password: "12345678")
user2.accounts.create!(agency_name: "Cambodia Travel", 
					bank_detail: "xxx-xxx-xxx-xxx",
					agency_sms: "012-999-999",
					whats_app: "cambodia-travel",
					we_chat: "cambodia-travel",
					agency_email: "admin@cambodiatravel.com"
					)

user2.tours.create!(name: "Cambodia",
										hotel_rating: 5,
										number_of_days: 3,
										number_of_night: 2,
										location: "Siem Reap")

user3 = User.create!(email: "demo3@manao.com", password: "12345678")
user3.accounts.create!(agency_name: "Sohkphan Travel", 
					bank_detail: "xxx-xxx-xxx-xxx",
					agency_sms: "012-999-999",
					whats_app: "sohkphan-travel",
					we_chat: "sohkphan-travel",
					agency_email: "admin@sohkphantravel.com"
					)
user3.tours.create!(name: "Sohkphan",
										hotel_rating: 5,
										number_of_days: 3,
										number_of_night: 2,
										location: "Siem Reap")


