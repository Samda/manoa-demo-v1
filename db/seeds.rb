# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.where(email: "demo1@manao.com").first_or_create(password: "12345678")

account = Account.where(agency_name: "Angkor Travel").first_or_create(
					bank_detail: "xxx-xxx-xxx-xxx",
					agency_sms: "012-999-999",
					whats_app: "angkor-travel",
					we_chat: "angkor-travel",
					agency_email: "admin@angkortravel.com",
					documents: "some documents",
					quotations: "some qoutations",
					country: "Cambodia",
					city: "Siem Reap",
					user: user
				)

tour = Tour.where(name: "Angkor1").first_or_create(
										hotel_rating: 5,
										number_of_days: 3,
										number_of_night: 2,
										account: account
										)

user1 = User.where(email: "demo1@manao.com").first_or_create(password: "12345678")
account1 = Account.where(agency_name: "Bali Travel").first_or_create(
					bank_detail: "xxx-xxx-xxx-xxx",
					agency_sms: "012-999-999",
					whats_app: "angkor-travel",
					we_chat: "angkor-travel",
					agency_email: "admin@angkortravel.com",
					documents: "some documents",
					quotations: "some qoutations",
					country: "Indonasia",
					city: "Bali",
					user: user1
				)
tour1 = Tour.where(name: "Angkor1").first_or_create(
										hotel_rating: 5,
										number_of_days: 3,
										number_of_night: 2,
										account: account1
										)

user2 = User.where(email: "demo2@manao.com").first_or_create(password: "12345678")
account2 = Account.where(agency_name: "Lao Travel").first_or_create(
					bank_detail: "xxx-xxx-xxx-xxx",
					agency_sms: "012-999-999",
					whats_app: "angkor-travel",
					we_chat: "angkor-travel",
					agency_email: "admin@angkortravel.com",
					documents: "some documents",
					quotations: "some qoutations",
					country: "Lao",
					city: "Bakse",
					user: user2
				)
tour2 = Tour.where(name: "Angkor1").first_or_create(
										hotel_rating: 5,
										number_of_days: 3,
										number_of_night: 2,
										account: account2
										)
