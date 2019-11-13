class Food < ApplicationRecord
    has_many :ingredients
    belongs_to :plate

    validates :name, presence: true
end
