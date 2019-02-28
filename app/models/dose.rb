class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence: true
  validates_uniqueness_of :cocktail_id, :scope => [:ingredient_id]

  # validates :name, uniqueness: true, presence: true
end
