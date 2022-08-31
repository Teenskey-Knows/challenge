class Movie < ActiveRecord::Base
    has_many :actors
    has_many :roles, through: :actors
end