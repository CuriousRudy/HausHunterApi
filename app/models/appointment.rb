class Appointment < ApplicationRecord
  belongs_to :listing
  belongs_to :user
  has_many :notes

end
