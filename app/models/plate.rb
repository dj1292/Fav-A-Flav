class Plate < ApplicationRecord
    belongs_to :user
    has_many :foods
    has_many :reviews
    # belongs_to :restaurant


end
