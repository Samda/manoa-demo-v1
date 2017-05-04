# == Schema Information
#
# Table name: tours
#
#  id              :integer          not null, primary key
#  name            :string
#  hotel_rating    :integer
#  number_of_days  :integer
#  number_of_night :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  account_id      :integer
#  description     :text
#

class Tour < ApplicationRecord
	belongs_to :account

	def self.by_country(name)
		joins(:account).where("accounts.country ilike ?",  "%%#{name}%%")
	end

	def self.by_city(name)
		joins(:account).where("accounts.city ilike ?",  "%%#{name}%%")
	end

	def self.by_number_of_day(number)
		where(number_of_days: number)
	end

	def self.by_number_of_night(number)
		where(number_of_night: number)
	end

	def self.by_hotel_rate(rate)
		where(hotel_rating: rate)
	end

	def between_dates(field, from = nil, to = nil)
    if from.present? && to.present?
      where(field => from..to)
    elsif from.present?
      where("#{field} >= ?", from)
    elsif to.present?
      where("#{field} <= ?", to)
    end
  end

	def self.permitted_paramsname
	[
		:hotel_rating,
		:number_of_days,
		:number_of_night,
		:description,
		:account_id
	]
	end
end
