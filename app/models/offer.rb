class Offer < ApplicationRecord
  CATEGORY = ['Unusual collection', 'Design', 'Animals', 'Outdoors', 'Famous People Flat', 'Music', 'Gardens & plants', 'Objects', 'Others']
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  has_many_attached :photos

  validates :title, :description, :price, :address, :capacity, :capacity, presence: true
  validates :category, inclusion: { in: CATEGORY }

  geocoded_by :address
  after_validation :geocode
  #if: :will_save_change_to_address?
end
