class Post < ApplicationRecord

    validates :title, presence: true, length: {minimum:2, maximum:50}
    validates :body, presence: true, length: {minimum:2, maximum: 2000} 
    belongs_to :user
end
