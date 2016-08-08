# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  nombre      :string
#  description :string
#  price       :integer
#  cant        :integer
#  activo      :boolean
#  make_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Product < ApplicationRecord
  belongs_to :make


  validates :nombre, presence: true, length:4..30
  validates :description, presence: true, length:4..30
  validates :cant, presence: true
end
