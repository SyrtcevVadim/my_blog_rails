class Article < ApplicationRecord
    include Visible
    extend FriendlyId
    friendly_id :title, use: :slugged    

    has_many :comments, dependent: :delete_all

    validates :title, presence: true
    validates :body, presence: true, length: {minimum: 10}

    def normalize_friendly_id(string)
        string
    end
end
