class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :offer
  has_many :reviews, dependent: :destroy
end
