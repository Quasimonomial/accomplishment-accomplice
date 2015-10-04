# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string
#  session_token   :string
#  password_digest :string
#  name            :string
#  session_count   :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  validates :email, :name, presence: true, uniqueness: true
end
