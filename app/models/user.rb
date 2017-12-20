class User < ApplicationRecord
  has_many :appointments
  has_many :notes
  has_many :listings, through: :appointments
end
