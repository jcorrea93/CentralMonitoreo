# == Schema Information
#
# Table name: tokens
#
#  id              :integer          not null, primary key
#  token           :string
#  number_requests :integer
#  name            :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Token < ApplicationRecord
	before_create :asignar_token

	def self.authenticate(auth_token)
		find_by(token: auth_token)
	end

	private 
	def asignar_token
		self.token = SecureRandom.uuid
	end 
end
