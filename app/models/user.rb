# == Schema Information
#
# Table name: users
#
#  id               :integer          not null, primary key
#  nickname       :text
#  email            :text
#  location         :text
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  password         :text
#  confirm_password :text
#

class User < ApplicationRecord

  has_secure_password

  # setup for assosication
  has_many :restaurants
  has_many :images
  has_many :reviews
  has_many :comments

  validates :email, presence: true, uniqueness: true

  validates :nickname, presence: true

end
