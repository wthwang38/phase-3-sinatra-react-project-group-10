class Review < ActiveRecord::Base
    belongs_to :sneaker
    belongs_to :user


end