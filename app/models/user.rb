class User < ApplicationRecord
  has_many :appointments
  has_many :movies, through :appointments
end
