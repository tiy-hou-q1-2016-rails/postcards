class Postcard < ActiveRecord::Base
  attachment :photo
  belongs_to :user

  geocoded_by :location
  after_validation :geocode

  validates :photo, :email_recipient, :user, :message, :location, presence: true
end
