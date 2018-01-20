# == Schema Information
#
# Table name: images
#
#  id            :integer          not null, primary key
#  title         :text
#  description   :text
#  user_id       :integer
#  restaurant_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Image < ApplicationRecord

  # setup for assosication
  belongs_to :user, optional: true

  belongs_to :restaurant, optional: true



end
