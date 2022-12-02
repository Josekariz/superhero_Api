class Power < ApplicationRecord
  has_many :heros,through: :hero_power
  
end
