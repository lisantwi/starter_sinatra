class Owner < ActiveRecord::Base
    has_many :car_owners
    has_many :cars, through: :car_owners

    # def is_owner?
    #     if self.car == 
    # end
end