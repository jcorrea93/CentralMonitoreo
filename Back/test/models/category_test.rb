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

require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
