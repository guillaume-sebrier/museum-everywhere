class Offer < ApplicationRecord
  CATEGORY = ['Unusual collection', 'Design', 'Animals', 'Outdoors', 'Famous People Flat', 'Music', 'Gardens & plants', 'Objects', 'Others']
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  has_many_attached :photos

  validates :title, :description, :price, :address, presence: true
  validates :category, inclusion: { in: CATEGORY }
end
