class Restaurant < ApplicationRecord
    has_many :plates
    has_many :foods, through: :plates
    has_many :users, through: :plates

    validates :name, presence: true
end
