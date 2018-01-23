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
  belongs_to :user, optional: true

  has_many :images
  has_many :reviews

  validates :name, presence: true
  validates :address, presence: true
  validates :location, presence: true
  validates :url_website, presence: true
  validates :user_id, presence: true

  geocoded_by :location  # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates

end
