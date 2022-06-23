class Sneaker < ActiveRecord::Base
    has_many :reviews, dependent: :destroy
    has_many :users, through: :reviews 


    def self.new_sneaker(name, price, year,image, condition)
    self.create(name: name, price: price, year: year, image: image, condition: condition)
    end
end
