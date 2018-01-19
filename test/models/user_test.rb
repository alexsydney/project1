# == Schema Information
#
# Table name: users
#
#  id               :integer          not null, primary key
#  first_name       :text
#  last_name        :text
#  email            :text
#  location         :text
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  password         :text
#  confirm_password :text
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
