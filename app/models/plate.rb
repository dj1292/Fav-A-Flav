class Plate < ApplicationRecord
    belongs_to :user
    has_many :foods
    has_one :review
    # belongs_to :restaurant


end
