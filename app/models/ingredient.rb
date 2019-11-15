class Ingredient < ApplicationRecord

    belongs_to :food
    validates :name, presence: true
end
