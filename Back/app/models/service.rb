# == Schema Information
#
# Table name: services
#
#  id          :integer          not null, primary key
#  nombre      :string
#  description :string
#  activo      :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Service < ApplicationRecord
	has_many :categories

	validates :nombre, presence: true, length:4..30
end
