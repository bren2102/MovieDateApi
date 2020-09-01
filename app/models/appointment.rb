class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :movie
  belongs_to :city
end
