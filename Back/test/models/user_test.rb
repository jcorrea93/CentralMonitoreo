# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string
#  last_name  :string
#  address    :string
#  active     :boolean
#  email      :string
#  bio        :text
#  birth_date :date
#  estrato    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
