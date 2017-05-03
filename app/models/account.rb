# == Schema Information
#
# Table name: accounts
#
#  id           :integer          not null, primary key
#  agency_name  :string
#  bank_detail  :string
#  agency_sms   :string
#  whats_app    :string
#  we_chat      :string
#  agency_email :string
#  user_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  documents    :text
#  quotations   :text
#  country      :string
#  city         :string
#

class Account < ApplicationRecord
	belongs_to :user
	has_many :tours
end
