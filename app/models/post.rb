class Post < ApplicationRecord
    belongs_to :topic

    validates :title, presence: true
    validates :author, presence: true
    validates :content, presence: true
end
