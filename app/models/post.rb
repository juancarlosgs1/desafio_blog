class Post < ApplicationRecord
    validates :image_url , presence: :true
    validates :title , presence: :true
    validates :content , presence: :true
end
