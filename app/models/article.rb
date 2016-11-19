class Article <ActiveRecord::Base
    validates :title, presence: true, length: {minimum: 3, maxiumum: 30 }
    validates :description, presence: true, length: {minimum:10, maximum: 3000}

end