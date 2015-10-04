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

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end