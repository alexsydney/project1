# == Schema Information
#
# Table name: reviews
#
#  id            :integer          not null, primary key
#  title         :text
#  body          :text
#  rating        :text
#  user_id       :integer
#  restaurant_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Review < ApplicationRecord

  # setup for assosication
  belongs_to :user

  belongs_to :restaurant

  belongs_to :comment

end
