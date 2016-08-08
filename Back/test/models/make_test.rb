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

require 'test_helper'

class MakeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
