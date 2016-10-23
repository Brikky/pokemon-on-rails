class Trainer < ApplicationRecord
  has_secure_password
  has_many :teams
end
