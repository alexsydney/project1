# == Schema Information
#
# Table name: restaurants
#
#  id          :integer          not null, primary key
#  name        :text
#  address     :text
#  location    :text
#  url_website :text
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Restaurant < ApplicationRecord

  # setup for assosication
  belongs_to :user

  has_many :images
  has_many :reviews
  

end
