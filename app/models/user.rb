class User < ActiveRecord::Base
    has_many :reviews
    has_many :sneakers, through: :reviews
end