# == Schema Information
#
# Table name: makes
#
#  id          :integer          not null, primary key
#  nombre      :string
#  description :string
#  activo      :boolean
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Make < ApplicationRecord
  belongs_to :category
  has_many :products

  validates :nombre, presence: true, length:2..30
  validates :description, presence: true, length:4..30
end
