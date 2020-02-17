class News < ApplicationRecord
    belongs_to :category
    belongs_to :author
    belongs_to :user
end
