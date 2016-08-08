# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  last_name       :string
#  user_name       :string
#  email           :string
#  password_digest :string
#  birth_date      :date
#  status          :boolean          default(TRUE)
#  avatar_url      :string
#  phone           :string
#  identification  :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#format: /\A^(?=.*?[A-Z])(?=(.*[a-z]){1,})(?=(.*[\d]){1,})(?=(.*[\W]){1,})(?!.*\s).{8,}$\z/

class User < ActiveRecord::Base

	has_secure_password

	validates :name, presence: true, length:5..30
	validates :last_name, presence: true
	validates :user_name, presence: true, length:5..20
	validates :email, presence: true, format: /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/
	validates :password, presence: true
	validates :password_confirmation, presence: true
	validates :identification, presence: true
end
