class Review < ApplicationRecord
    belongs_to :user
    # belongs_to :plate

    validates :content, presence: true
end
