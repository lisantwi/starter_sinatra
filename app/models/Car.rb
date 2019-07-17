class Car < ActiveRecord::Base
    has_many :car_owners
    has_many :owners, through: :car_owners
end