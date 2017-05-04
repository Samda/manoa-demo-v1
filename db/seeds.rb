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

Tour.where(name: "Angkor1").first_or_create(
	hotel_rating: 5,
	number_of_days: 3,
	number_of_night: 2,
	account: account,
	description: 'See the ancient city of Cambodia with many temples.'
)

Tour.where(name: "Angkor and South of Cambodia ").first_or_create(
	hotel_rating: 2,
	number_of_days: 4,
	number_of_night: 4,
	account: account,
	description: 'From the ancient city up to the mountains and the beautiful waterfalls in Cambodia.
	Siem Reap, Kratie, Ranakiri and Mundulkiri.'
)

Tour.where(name: "Angkor and North of Cambodia").first_or_create(
	hotel_rating: 1,
	number_of_days: 7,
	number_of_night: 7,
	account: account,
	description: 'Enjoy the ancient city of Cambodia with many of temples and seek out north of Cambodia.
	Siem reap, Phnom Penh, Kampot, Sihanouk ville'
)

user1 = User.where(email: "demo1@manao.com").first_or_create(password: "12345678")
account1 = Account.where(agency_name: "Bali Travel").first_or_create(
						bank_detail: "xxx-xxx-xxx-xxx",
						agency_sms: "012-999-999",
						whats_app: "bali-travel",
						we_chat: "bali-travel",
						agency_email: "admin@bali-travel.com",
						documents: "some documents",
						quotations: "some qoutations",
						country: "Indonesia",
						city: "Bali",
						user: user1
					)

Tour.where(name: "Bali Destination").first_or_create(
	hotel_rating: 5,
	number_of_days: 3,
	number_of_night: 2,
	account: account1,
	description: 'Let the good moment of life in Bali.'
)

Tour.where(name: "Bali and Jungle trek").first_or_create(
	hotel_rating: 3,
	number_of_days: 3,
	number_of_night: 3,
	account: account1,
	description: 'Find the best landscape view of Bali from groun up to the hill cross by the river and many waterfalls. Let try  Jungle Trekking in Bali.'
)

Tour.where(name: "Bali scuba dive").first_or_create(
	hotel_rating: 2,
	number_of_days: 3,
	number_of_night: 3,
	account: account1,
	description: 'Choose a better experience in Bali let go underwater.'
)

Tour.where(name: "KL, Bali and Lankawi experience").first_or_create(
	hotel_rating: 1,
	number_of_days: 5,
	number_of_night: 5,
	account: account1,
	description: 'The tour package lead you from City to islands.'
)


user2 = User.where(email: "demo2@manao.com").first_or_create(password: "12345678")
account2 = Account.where(agency_name: "Lao Travel").first_or_create(
						bank_detail: "xxx-xxx-xxx-xxx",
						agency_sms: "012-999-999",
						whats_app: "bakse-travel",
						we_chat: "bakse-travel",
						agency_email: "admin@bakse-travel.com",
						documents: "some documents",
						quotations: "some qoutations",
						country: "Lao",
						city: "Bakse",
						user: user2
					)

Tour.where(name: "Bakse Destination").first_or_create(
	hotel_rating: 5,
	number_of_days: 3,
	number_of_night: 2,
	account: account2,
	description: "Spend a good moment in Bakse and around Bakse"
)

Tour.where(name: "The Mekong experiment").first_or_create(
	hotel_rating: 5,
	number_of_days: 5,
	number_of_night: 5,
	account: account2,
	description: "Enjoy you journey long mekong and see how is life on Mekong river."
)
