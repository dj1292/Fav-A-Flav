class User < ApplicationRecord
    has_secure_password

    has_many :plates, dependent: :destroy
    has_many :foods, through: :plates
    has_many :reviews, through: :plates
    has_many :restaurants, through: :plates

    before_validation :downcase_fields
    validates :username, {presence: true, uniqueness: true}
    validates :location, :favorite_food, presence:true

    def downcase_fields
        self.username.downcase!
    end 
end
