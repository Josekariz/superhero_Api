class HeroPower < ApplicationRecord
  belongs_to :heroe
  belongs_to :power 
  validates :strength, inclusion: {in: %w(Strong Weak Average)}
end
