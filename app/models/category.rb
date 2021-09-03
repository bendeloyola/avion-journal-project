class Category < ApplicationRecord
    has_many :journals
    belongs_to :user
end
