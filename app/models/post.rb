class Post < ApplicationRecord
    validates :image_url , presence: :true
    validates :title , presence: :true
    validates :content , presence: :true

    before_save :update_content

    def update_content
        # censurar la palabra spoiler
        acum = ""
        array = self.content.split
        array.each do |palabra|
            acum += "#{palabra} " if palabra.upcase != "SPOILER"
        end
        self.content = acum
    end

end
