# == Schema Information
#
# Table name: categories
#
#  id          :integer          not null, primary key
#  nombre      :string
#  description :string
#  activo      :boolean
#  service_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Category < ApplicationRecord
  belongs_to :service
  has_many :makes

  validates :nombre, presence: true, length:4..30
  validates :description, presence: true, length:4..30
end
